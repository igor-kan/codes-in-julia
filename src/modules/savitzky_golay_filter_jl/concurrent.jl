function parallel_sg_smooth(kernel::SgKernel, series::Vector{Vector{Float64}})
    out = Vector{Vector{Float64}}(undef, length(series))
    Threads.@threads for i in eachindex(series)
        out[i] = apply_sg_interior(kernel, series[i])
    end
    return out
end
