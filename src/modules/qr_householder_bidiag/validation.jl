function validate_bidiag_matrix(A::AbstractMatrix{T}) where {T<:AbstractFloat}
    m, n = size(A)
    if m < n || n < 2
        throw(BidiagDimensionError("matrix must have rows >= cols >= 2"))
    end
    if !all(isfinite, A)
        throw(BidiagDomainError("non-finite matrix entry rejected"))
    end
    return true
end
