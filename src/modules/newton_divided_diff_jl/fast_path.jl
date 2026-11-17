function fast_eval_grid(p::NewtonPoly, grid::Vector{Float64})
    out = similar(grid)
    @inbounds for i in eachindex(grid)
        out[i] = eval_newton(p, grid[i])
    end
    return out
end
