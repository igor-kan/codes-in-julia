function parallel_welch_batch(est::WelchEstimator, sigs::Vector{Vector{Float64}})
    out = Vector{Vector{Float64}}(undef, length(sigs))
    Threads.@threads for i in eachindex(sigs)
        out[i] = welch_psd(est, sigs[i])
    end
    return out
end
