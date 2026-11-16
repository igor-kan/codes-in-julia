function verify_linear_unbiasedness(X::AbstractMatrix{T}, beta::AbstractVector{T}, intercept::T, pred::LoessPrediction{T}; tol::T = T(1e-7)) where {T<:AbstractFloat}
    exact = pred.query_points * beta .+ intercept
    if maximum(abs.(exact .- pred.fitted)) > tol
        throw(LoessDomainError("local linear regression failed zero-bias plane reproduction"))
    end
    return true
end
