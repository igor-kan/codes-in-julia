function parallel_apsp_batch(mats::Vector{Matrix{Float64}})
    out = Vector{ApspMatrix}(undef, length(mats))
    Threads.@threads for i in eachindex(mats)
        out[i] = solve_apsp(FloydWarshallSolver(), mats[i])
    end
    return out
end
