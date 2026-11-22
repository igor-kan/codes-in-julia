function validate_nonempty_GnD57(xs::AbstractArray)
    if isempty(xs)
        throw(GnD57Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
