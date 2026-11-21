function validate_nonempty_CgD56(xs::AbstractArray)
    if isempty(xs)
        throw(CgD56Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
