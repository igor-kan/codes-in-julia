module NewtonScalar
export newton_raphson

function newton_raphson(x::Float64, f::Float64, df::Float64)
    return x - f / df
end

end # module
