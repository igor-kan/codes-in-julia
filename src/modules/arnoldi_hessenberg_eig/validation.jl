function validate_arnoldi_inputs(A::AbstractMatrix{T}, q0::AbstractVector{T}, k::Int) where {T<:AbstractFloat}
    m, n = size(A)
    m == n && n == length(q0) || throw(ArnoldiDimensionError("dimension mismatch between A and q0"))
    k >= 1 || throw(ArnoldiDimensionError("Krylov step count k must be >= 1"))
    norm(q0) > zero(T) || throw(ArnoldiDomainError("seed vector q0 cannot be zero"))
    return true
end
