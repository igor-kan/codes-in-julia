struct NmOptions{T<:AbstractFloat}
    max_iter::Int
    tol::T
    alpha::T
    gamma::T
    rho::T
    sigma::T
end

NmOptions(; max_iter::Int = 2000, tol::Float64 = 1e-9) =
    NmOptions{Float64}(max_iter, tol, 1.0, 2.0, 0.5, 0.5)

struct NmResult{T<:AbstractFloat}
    x::Vector{T}
    fx::T
    iterations::Int
    converged::Bool
end
