function validate_gk_interval(a::Float64, b::Float64, rtol::Float64, atol::Float64)
    isfinite(a) && isfinite(b) && b >= a || throw(GkDomainError("requires finite ordered bounds [a, b]"))
    rtol >= 0.0 && atol >= 0.0 || throw(GkDomainError("tolerances must be non-negative"))
    return true
end
