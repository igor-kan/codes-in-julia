function batch_viterbi_decode(model::HmmSpec{T}, seqs::Vector{Vector{Int}}) where {T<:AbstractFloat}
    dec = LogViterbiDecoder(1e-300)
    out = Vector{ViterbiPath{T}}(undef, length(seqs))
    Threads.@threads for i in eachindex(seqs)
        out[i] = decode_map_sequence(dec, model, seqs[i])
    end
    return out
end
