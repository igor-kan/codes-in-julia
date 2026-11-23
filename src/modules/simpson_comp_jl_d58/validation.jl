function validate_nonempty_SimpD58(xs::AbstractArray)
    if isempty(xs)
        throw(SimpD58Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
