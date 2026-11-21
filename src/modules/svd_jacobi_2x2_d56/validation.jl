function validate_nonempty_JacobiD56(xs::AbstractArray)
    if isempty(xs)
        throw(JacobiD56Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
