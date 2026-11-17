function verify_prefix_free(book::Dict{UInt8,Vector{Bool}})
    codes = collect(values(book))
    for i in eachindex(codes), j in eachindex(codes)
        i == j && continue
        c1, c2 = codes[i], codes[j]
        length(c1) <= length(c2) && c2[1:length(c1)] == c1 && error("prefix collision detected")
    end
end
