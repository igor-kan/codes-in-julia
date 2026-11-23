function fit_ridge(X::Matrix{Float64}, y::Vector{Float64}, lam::Float64)
    p = size(X, 2)
    G = X' * X
    for i in 1:p
        G[i, i] += lam
    end
    return G \ (X' * y)
end
