function validate_nonempty_GaussLeg(xs::AbstractArray)
    if isempty(xs)
        throw(GaussLegError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
