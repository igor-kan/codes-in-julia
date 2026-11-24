function validate_nonempty_BaryD59(xs::AbstractArray)
    if isempty(xs)
        throw(BaryD59Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
