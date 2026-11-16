using LinearAlgebra

function verify_toeplitz_residual(r::AbstractVector{T}, b::AbstractVector{T}, res::ToeplitzResult{T}; tol::T = T(1e-9)) where {T<:AbstractFloat}
    if any(abs.(res.reflection_coeffs) .>= one(T))
        throw(LevinsonDomainError("Schur reflection stability |k| < 1 violated"))
    end
    Tmat = build_dense_toeplitz(r)
    rel = norm(Tmat * res.solution - b) / max(one(T), norm(b))
    if rel > tol
        throw(LevinsonDomainError("Levinson solution residual exceeded tolerance"))
    end
    return true
end
