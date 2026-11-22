function validate_nonempty_MgsD57(xs::AbstractArray)
    if isempty(xs)
        throw(MgsD57Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
