function fast_residual_inf(A::Matrix{Float64}, x::Vector{Float64}, b::Vector{Float64})
    n = length(b)
    mx = 0.0
    @inbounds for i in 1:n
        acc = 0.0
        @simd for j in 1:n
            acc += A[i, j] * x[j]
        end
        diff = abs(acc - b[i])
        if diff > mx
            mx = diff
        end
    end
    return mx
end
