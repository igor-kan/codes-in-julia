function parallel_norms_Rk4Res(batches::Vector{Vector{Float64}})
    out = zeros(Float64, length(batches))
    Threads.@threads for i in eachindex(batches)
        out[i] = fast_norm2_Rk4Res(batches[i])
    end
    return out
end
