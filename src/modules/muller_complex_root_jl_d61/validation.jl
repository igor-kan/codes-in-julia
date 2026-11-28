function validate_nonempty_Muller(xs::AbstractArray)
    if isempty(xs)
        throw(MullerError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
