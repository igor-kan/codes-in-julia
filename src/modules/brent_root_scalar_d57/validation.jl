function validate_nonempty_SecD57(xs::AbstractArray)
    if isempty(xs)
        throw(SecD57Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
