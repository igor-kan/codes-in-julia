function validate_nonempty_Svd2D59(xs::AbstractArray)
    if isempty(xs)
        throw(Svd2D59Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
