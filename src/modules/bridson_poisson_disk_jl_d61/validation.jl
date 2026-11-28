function validate_nonempty_Bridson(xs::AbstractArray)
    if isempty(xs)
        throw(BridsonError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
