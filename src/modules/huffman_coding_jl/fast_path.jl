function fast_encode_symbols(book::Dict{UInt8,Vector{Bool}}, syms::Vector{UInt8})
    bits = Bool[]
    for s in syms
        append!(bits, book[s])
    end
    return bits
end
