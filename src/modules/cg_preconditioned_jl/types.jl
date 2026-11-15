struct CgConfig{T<:AbstractFloat}
    tol::T
    max_iter::Int
end

struct CgSolution{T<:AbstractFloat}
    x::Vector{T}
    iterations::Int
    residual_norm::T
    converged::Bool
end
