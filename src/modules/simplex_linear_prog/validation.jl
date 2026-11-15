function validate_lp_inputs(lp::StandardLp{T}) where {T<:AbstractFloat}
    m, n = size(lp.A)
    m == length(lp.b) && n == length(lp.c) || throw(SimplexDimensionError("matrix/vector dimension mismatch"))
    all(>=(zero(T)), lp.b) || throw(SimplexDomainError("standard origin feasibility requires b >= 0"))
    return true
end
