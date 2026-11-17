function validate_huff_freqs(freqs::Dict{UInt8,Int})
    if isempty(freqs) || !all(v > 0 for v in values(freqs))
        throw(HuffError(:freq, "frequencies must be positive"))
    end
    return true
end
