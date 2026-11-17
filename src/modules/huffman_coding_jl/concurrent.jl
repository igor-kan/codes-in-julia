function parallel_encode_chunks(book::Dict{UInt8,Vector{Bool}}, chunks::Vector{Vector{UInt8}})
    out = Vector{Vector{Bool}}(undef, length(chunks))
    Threads.@threads for i in eachindex(chunks)
        out[i] = fast_encode_symbols(book, chunks[i])
    end
    return out
end
