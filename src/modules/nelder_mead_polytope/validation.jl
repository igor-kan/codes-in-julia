function validate_nm_start(x0::AbstractVector{T}, opts::NmOptions{T}) where {T<:AbstractFloat}
    isempty(x0) && throw(NmDimensionError("x0 must be non-empty"))
    all(isfinite, x0) || throw(NmDomainError("x0 must be finite"))
    opts.tol > zero(T) || throw(NmDomainError("tolerance must be positive"))
    return true
end
