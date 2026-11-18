function validate_nonempty_LmOpt(xs::AbstractArray)
    if isempty(xs)
        throw(LmOptError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
