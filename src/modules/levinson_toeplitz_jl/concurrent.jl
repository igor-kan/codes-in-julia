function batch_solve_toeplitz(r::Vector{T}, rhs_list::Vector{Vector{T}}) where {T<:AbstractFloat}
    solver = LevinsonToeplitzSolver()
    out = Vector{ToeplitzResult{T}}(undef, length(rhs_list))
    Threads.@threads for i in eachindex(rhs_list)
        out[i] = solve_sym_toeplitz(solver, r, rhs_list[i])
    end
    return out
end
