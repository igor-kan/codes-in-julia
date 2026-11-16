using LinearAlgebra

function householder_vector(x::AbstractVector{T}) where {T<:AbstractFloat}
    v = copy(Vector{T}(x))
    n = length(v)
    if n == 0
        return v, zero(T)
    end
    nrm = norm(v)
    if nrm == zero(T)
        return zeros(T, n), zero(T)
    end
    sign_x1 = v[1] >= zero(T) ? one(T) : -one(T)
    v[1] += sign_x1 * nrm
    beta = 2 * (v[1]^2) / dot(v, v)
    v ./= v[1]
    return v, beta
end

function bidiagonalize(
    solver::HouseholderBidiag,
    A::AbstractMatrix{T},
    cfg::BidiagConfig{T} = BidiagConfig(),
) where {T<:AbstractFloat}
    validate_bidiag_matrix(A)
    m, n = size(A)
    B = copy(Matrix{T}(A))
    U = Matrix{T}(I, m, m)
    V = Matrix{T}(I, n, n)

    for k in 1:n
        v, beta = householder_vector(@view B[k:m, k])
        if beta != zero(T)
            @views B[k:m, k:n] .-= beta .* v * (v' * B[k:m, k:n])
            if solver.store_factors && cfg.accumulate_orth
                @views U[:, k:m] .-= (U[:, k:m] * v) * (beta .* v')
            end
        end
        if k <= n - 2
            vr, br = householder_vector(@view B[k, (k + 1):n])
            if br != zero(T)
                @views B[k:m, (k + 1):n] .-= (B[k:m, (k + 1):n] * vr) * (br .* vr')
                if solver.store_factors && cfg.accumulate_orth
                    @views V[(k + 1):n, :] .-= (br .* vr) * (vr' * V[(k + 1):n, :])
                end
            end
        end
    end
    d = [B[i, i] for i in 1:n]
    e = [B[i, i + 1] for i in 1:(n - 1)]
    B_clean = diagm(0 => d, 1 => e)
    return BidiagFactor{T}(U, B_clean, Matrix(V'), d, e)
end
