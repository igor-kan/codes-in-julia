function solve_symmetric_toeplitz(r::Vector{Float64}, b::Vector{Float64})
    n = length(b)
    T = [r[abs(i - j) + 1] for i in 1:n, j in 1:n]
    return T \ b
end
