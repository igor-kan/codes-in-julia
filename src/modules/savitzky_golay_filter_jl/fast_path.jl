function fast_dot_window(w::Vector{Float64}, y::Vector{Float64}, center::Int, m::Int)
    acc = 0.0
    @inbounds @simd for k in 1:(2 * m + 1)
        acc += w[k] * y[center - m - 1 + k]
    end
    return acc
end
