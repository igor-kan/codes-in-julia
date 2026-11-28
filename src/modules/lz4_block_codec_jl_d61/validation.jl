function validate_nonempty_Lz4(xs::AbstractArray)
    if isempty(xs)
        throw(Lz4Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
