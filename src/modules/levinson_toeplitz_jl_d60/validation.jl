function validate_nonempty_Levinson(xs::AbstractArray)
    if isempty(xs)
        throw(LevinsonError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
