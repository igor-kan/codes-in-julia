function parallel_integrate_intervals(rule::RombergRule, f::Function, segs::Vector{Tuple{Float64,Float64}})
    vals = Vector{Float64}(undef, length(segs))
    Threads.@threads for i in eachindex(segs)
        vals[i] = integrate_romberg(rule, f, segs[i][1], segs[i][2]).value
    end
    return sum(vals)
end
