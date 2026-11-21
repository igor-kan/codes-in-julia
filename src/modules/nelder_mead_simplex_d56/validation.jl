function validate_nonempty_NelderD56(xs::AbstractArray)
    if isempty(xs)
        throw(NelderD56Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
