function parallel_arnoldi_rays(A::Matrix{T}, seeds::Vector{Vector{T}}, k::Int) where {T<:AbstractFloat}
    alg = ModifiedGsArnoldi(true)
    out = Vector{ArnoldiFactorization{T}}(undef, length(seeds))
    Threads.@threads for i in eachindex(seeds)
        out[i] = arnoldi_factorize(alg, A, seeds[i], k)
    end
    return out
end
