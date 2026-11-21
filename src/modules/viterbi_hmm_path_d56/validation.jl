function validate_nonempty_VitD56(xs::AbstractArray)
    if isempty(xs)
        throw(VitD56Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
