struct BrentConfig{T<:AbstractFloat}
    tol_x::T
    max_iter::Int
end

BrentConfig(; tol_x::Float64 = 1e-12, max_iter::Int = 100) = BrentConfig{Float64}(tol_x, max_iter)

struct RootOutcome{T<:AbstractFloat}
    root::T
    f_val::T
    iterations::Int
    converged::Bool
end
