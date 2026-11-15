using LinearAlgebra

function arnoldi_factorize(
    alg::ModifiedGsArnoldi,
    A::Matrix{T},
    q0::Vector{T},
    k::Int,
) where {T<:AbstractFloat}
    validate_arnoldi_inputs(A, q0, k)
    n = size(A, 1)
    m = min(k, n)
    Q = zeros(T, n, m + 1)
    H = zeros(T, m + 1, m)
    Q[:, 1] = q0 ./ norm(q0)
    breakdown = false

    for j in 1:m
        w = A * view(Q, :, j)
        for pass in (alg.reorthogonalize ? (1, 2) : (1,))
            for i in 1:j
                qi = view(Q, :, i)
                hij = dot(qi, w)
                H[i, j] += hij
                axpy!(-hij, qi, w)
            end
        end
        beta = norm(w)
        H[j + 1, j] = beta
        if beta <= T(1e-13)
            breakdown = true
            return ArnoldiFactorization{T}(Q[:, 1:j], H[1:j, 1:j], breakdown)
        end
        Q[:, j + 1] = w ./ beta
    end
    return ArnoldiFactorization{T}(Q, H, breakdown)
end
