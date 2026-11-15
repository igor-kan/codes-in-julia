struct GkResult{T<:AbstractFloat}
    integral::T
    error_est::T
    evals::Int
    subdivisions::Int
end
