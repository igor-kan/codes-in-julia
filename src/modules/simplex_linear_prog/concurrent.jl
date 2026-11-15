function solve_lp_batch(lps::Vector{StandardLp{T}}) where {T<:AbstractFloat}
    solver = BlandSimplexSolver(5000)
    out = Vector{LpSolution{T}}(undef, length(lps))
    Threads.@threads for i in eachindex(lps)
        out[i] = maximize_lp(solver, lps[i])
    end
    return out
end
