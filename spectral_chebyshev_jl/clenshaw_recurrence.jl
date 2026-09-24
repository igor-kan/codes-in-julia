module ClenshawRecurr
export clenshaw_step

function clenshaw_step(b1::Float64, b2::Float64, x::Float64, a::Float64)
    return 2.0 * x * b1 - b2 + a
end

end # module
