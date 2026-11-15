function multistart_lbfgs(fg!, starts::Vector{Vector{T}}, cfg::LbfgsConfig{T}) where {T<:AbstractFloat}
    solver = LbfgsSolver(cfg.history)
    results = Vector{LbfgsResult{T}}(undef, length(starts))
    Threads.@threads for i in eachindex(starts)
        results[i] = minimize_smooth(solver, fg!, starts[i], cfg)
    end
    best_i = argmin([r.objective for r in results])
    return results[best_i]
end
