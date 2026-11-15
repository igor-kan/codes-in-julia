function batch_singular_values(mats::Vector{Matrix{T}}) where {T<:AbstractFloat}
    alg = HestenesJacobiSvd(40, 1e-12)
    out = Vector{Vector{T}}(undef, length(mats))
    Threads.@threads for i in eachindex(mats)
        out[i] = jacobi_svd(alg, mats[i]).S
    end
    return out
end
