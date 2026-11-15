struct LbfgsConfig{T<:AbstractFloat}
    history::Int
    max_iter::Int
    tol::T
    c1_armijo::T
end

LbfgsConfig(; history::Int = 8, max_iter::Int = 500, tol::Float64 = 1e-8, c1::Float64 = 1e-4) =
    LbfgsConfig{Float64}(history, max_iter, tol, c1)

struct LbfgsResult{T<:AbstractFloat}
    minimizer::Vector{T}
    objective::T
    grad_norm::T
    iterations::Int
    converged::Bool
end
