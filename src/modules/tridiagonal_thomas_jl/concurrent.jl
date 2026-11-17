function parallel_thomas_solve(sys::TridiagSystem{Float64}, rhss::Vector{Vector{Float64}})
    xs = [zeros(length(r)) for r in rhss]
    Threads.@threads for i in eachindex(rhss)
        solve_thomas!(ThomasSolver(), xs[i], sys, rhss[i])
    end
    return xs
end
