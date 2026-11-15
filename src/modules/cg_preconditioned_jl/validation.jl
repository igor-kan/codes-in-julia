function validate_spd_system(A::AbstractMatrix{T}, b::AbstractVector{T}) where {T<:AbstractFloat}
    m, n = size(A)
    m == n && m == length(b) || throw(CgDimensionError("A must be square and match length(b)"))
    all(isfinite, A) && all(isfinite, b) || throw(CgDomainError("non-finite entries in A or b"))
    for i in 1:n
        A[i, i] > zero(T) || throw(CgDomainError("non-positive diagonal entry detected"))
    end
    return true
end
