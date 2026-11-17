function validate_romberg(a::Float64, b::Float64, levels::Int, tol::Float64)
    isfinite(a) && isfinite(b) && a < b || throw(RombergError(:bounds, "require finite a < b"))
    levels >= 2 || throw(RombergError(:levels, "levels must be >= 2"))
    tol > 0.0 || throw(RombergError(:tol, "tol must be positive"))
end
