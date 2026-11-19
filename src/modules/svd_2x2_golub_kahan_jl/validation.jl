function validate_nonempty_Svd2Res(xs::AbstractArray)
    if isempty(xs)
        throw(Svd2ResError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
