function validate_knots(xs::Vector{Float64}, ys::Vector{Float64})
    n = length(xs)
    n >= 1 && length(ys) == n || throw(NewtonInterpError(:dim, "x/y length mismatch"))
    length(unique(xs)) == n || throw(NewtonInterpError(:dup, "interpolation nodes must be distinct"))
end
