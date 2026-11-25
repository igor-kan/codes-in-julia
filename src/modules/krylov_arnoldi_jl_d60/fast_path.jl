function fast_norm2_Arnoldi(xs::Vector{Float64})
    s = 0.0
    @inbounds @simd for i in eachindex(xs)
        s += xs[i] * xs[i]
    end
    return s
end
