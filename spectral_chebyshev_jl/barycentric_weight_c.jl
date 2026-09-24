module BarycentricC
export chebyshev_endpoint_c

function chebyshev_endpoint_c(j::Int, n::Int)
    return (j == 0 || j == n) ? 2.0 : 1.0
end

end # module
