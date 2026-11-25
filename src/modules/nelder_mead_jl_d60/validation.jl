function validate_nonempty_NelderMead(xs::AbstractArray)
    if isempty(xs)
        throw(NelderMeadError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
