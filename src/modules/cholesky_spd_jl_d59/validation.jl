function validate_nonempty_CholD59(xs::AbstractArray)
    if isempty(xs)
        throw(CholD59Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
