function validate_lbfgs_inputs(x0::AbstractVector{T}, cfg::LbfgsConfig{T}) where {T<:AbstractFloat}
    isempty(x0) && throw(LbfgsDimensionError("initial vector x0 cannot be empty"))
    all(isfinite, x0) || throw(LbfgsDomainError("initial point contains non-finite values"))
    cfg.history > 0 || throw(LbfgsDimensionError("history size m must be positive"))
    cfg.tol > zero(T) || throw(LbfgsDomainError("gradient tolerance must be positive"))
    return true
end
