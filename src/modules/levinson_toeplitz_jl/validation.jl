function validate_toeplitz(r::AbstractVector{T}, b::AbstractVector{T}) where {T<:AbstractFloat}
    if isempty(r) || length(r) != length(b)
        throw(LevinsonDimensionError("first-row r and rhs b must share non-zero length"))
    end
    if r[1] <= zero(T) || !all(isfinite, r) || !all(isfinite, b)
        throw(LevinsonDomainError("Toeplitz diagonal r[1] must be positive and finite"))
    end
    return true
end
