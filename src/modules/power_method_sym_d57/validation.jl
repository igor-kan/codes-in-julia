function validate_nonempty_PowSymD57(xs::AbstractArray)
    if isempty(xs)
        throw(PowSymD57Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
