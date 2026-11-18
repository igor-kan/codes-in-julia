function validate_nonempty_Gk37(xs::AbstractArray)
    if isempty(xs)
        throw(Gk37Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
