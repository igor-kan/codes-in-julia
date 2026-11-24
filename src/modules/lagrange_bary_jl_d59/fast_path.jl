function fast_norm2_BaryD59(xs::Vector{Float64})
    s = 0.0
    @inbounds @simd for i in eachindex(xs)
        s += xs[i] * xs[i]
    end
    return s
end
