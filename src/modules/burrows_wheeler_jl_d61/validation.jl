function validate_nonempty_Bwt(xs::AbstractArray)
    if isempty(xs)
        throw(BwtError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
