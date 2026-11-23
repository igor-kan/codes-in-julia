function validate_nonempty_RidgeD58(xs::AbstractArray)
    if isempty(xs)
        throw(RidgeD58Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
