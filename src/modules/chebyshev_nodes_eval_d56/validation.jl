function validate_nonempty_ChebD56(xs::AbstractArray)
    if isempty(xs)
        throw(ChebD56Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
