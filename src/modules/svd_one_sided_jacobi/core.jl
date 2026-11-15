using LinearAlgebra

function jacobi_svd(alg::HestenesJacobiSvd, A::Matrix{T}) where {T<:AbstractFloat}
    validate_svd_matrix(A)
    m, n = size(A)
    B = copy(A)
    V = Matrix{T}(I, n, n)
    sweeps = 0

    for sw in 1:alg.max_sweeps
        sweeps = sw
        converged = true
        for p in 1:(n - 1)
            for q in (p + 1):n
                bp = view(B, :, p)
                bq = view(B, :, q)
                app = dot(bp, bp)
                aqq = dot(bq, bq)
                apq = dot(bp, bq)
                scale = sqrt(app * aqq)
                if abs(apq) <= T(alg.tol) * scale
                    continue
                end
                converged = false
                tau = (aqq - app) / (T(2) * apq)
                t = sign(tau == 0 ? one(T) : tau) / (abs(tau) + sqrt(one(T) + tau * tau))
                c = one(T) / sqrt(one(T) + t * t)
                s = c * t
                for i in 1:m
                    x = B[i, p]; y = B[i, q]
                    B[i, p] = c * x - s * y
                    B[i, q] = s * x + c * y
                end
                for i in 1:n
                    x = V[i, p]; y = V[i, q]
                    V[i, p] = c * x - s * y
                    V[i, q] = s * x + c * y
                end
            end
        end
        converged && break
    end

    S = Vector{T}(undef, n)
    U = Matrix{T}(undef, m, n)
    for j in 1:n
        S[j] = norm(view(B, :, j))
        U[:, j] = S[j] > T(1e-14) ? (B[:, j] ./ S[j]) : zeros(T, m)
    end
    perm = sortperm(S; rev = true)
    return JacobiSvd{T}(U[:, perm], S[perm], V[:, perm], sweeps)
end
