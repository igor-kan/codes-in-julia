function validate_nonempty_ToeplitzLev(xs::AbstractArray)
    if isempty(xs)
        throw(ToeplitzLevError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
