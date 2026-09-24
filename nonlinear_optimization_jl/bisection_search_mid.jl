module BisectionSearch
export bisect_interval

function bisect_interval(a::Float64, b::Float64)
    return 0.5 * (a + b)
end

end # module
