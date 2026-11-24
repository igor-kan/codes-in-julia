function validate_nonempty_SecantD59(xs::AbstractArray)
    if isempty(xs)
        throw(SecantD59Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
