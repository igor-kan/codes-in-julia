function batch_bluestein(plan::BluesteinPlan{T}, cols::Vector{Vector{Complex{T}}}) where {T<:AbstractFloat}
    out = Vector{Vector{Complex{T}}}(undef, length(cols))
    Threads.@threads for i in eachindex(cols)
        out[i] = execute_bluestein(plan, cols[i])
    end
    return out
end
