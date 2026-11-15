function validate_svd_matrix(A::AbstractMatrix{T}) where {T<:AbstractFloat}
    m, n = size(A)
    m >= n && n >= 1 || throw(SvdDimensionError("one-sided Jacobi SVD requires m >= n >= 1"))
    all(isfinite, A) || throw(SvdDomainError("input matrix contains NaN or Inf"))
    return true
end
