function validate_nonempty_FftD56(xs::AbstractArray)
    if isempty(xs)
        throw(FftD56Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
