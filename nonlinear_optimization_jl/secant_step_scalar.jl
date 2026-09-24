module SecantScalar
export secant_root

function secant_root(x1::Float64, x0::Float64, f1::Float64, f0::Float64)
    return x1 - f1 * (x1 - x0) / (f1 - f0)
end

end # module
