function validate_nonempty_BaryCheb(xs::AbstractArray)
    if isempty(xs)
        throw(BaryChebError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
