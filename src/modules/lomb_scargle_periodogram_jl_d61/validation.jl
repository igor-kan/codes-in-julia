function validate_nonempty_Lomb(xs::AbstractArray)
    if isempty(xs)
        throw(LombError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
