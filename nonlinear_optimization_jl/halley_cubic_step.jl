module HalleyScalar
export halley_root

function halley_root(x::Float64, f::Float64, df::Float64, d2f::Float64)
    return x - (2.0 * f * df) / (2.0 * df^2 - f * d2f)
end

end # module
