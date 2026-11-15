function multistart_nelder_mead(fn, starts::Vector{Vector{T}}, opts::NmOptions{T}) where {T<:AbstractFloat}
    solver = NelderMeadSolver(0.05)
    outs = Vector{NmResult{T}}(undef, length(starts))
    Threads.@threads for i in eachindex(starts)
        outs[i] = nelder_mead_solve(solver, fn, starts[i], opts)
    end
    return outs[argmin([o.fx for o in outs])]
end
