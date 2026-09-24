module GreenHelmholtz
export green_helmholtz_1d

function green_helmholtz_1d(k::Float64, x::Float64)
    return sin(k * abs(x)) / (2.0 * k)
end

end # module
