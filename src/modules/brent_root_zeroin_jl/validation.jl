function validate_bracket(f, a::T, b::T) where {T<:AbstractFloat}
    if !isfinite(a) || !isfinite(b) || a == b
        throw(BrentDimensionError("invalid interval endpoints"))
    end
    fa, fb = T(f(a)), T(f(b))
    if fa * fb > zero(T)
        throw(BrentDomainError("function does not bracket a root (same signs at endpoints)"))
    end
    return true
end
