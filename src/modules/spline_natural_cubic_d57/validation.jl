function validate_nonempty_SplD57(xs::AbstractArray)
    if isempty(xs)
        throw(SplD57Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
