function parallel_sor_rhs(solver::SorSolver{T}, A::Matrix{T}, rhs_list::Vector{Vector{T}}) where {T<:AbstractFloat}
    out = Vector{Vector{T}}(undef, length(rhs_list))
    Threads.@threads for idx in eachindex(rhs_list)
        out[idx] = solve_sor(solver, A, rhs_list[idx])
    end
    return out
end
