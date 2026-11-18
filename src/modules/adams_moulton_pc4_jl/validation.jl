function validate_nonempty_Abm4(xs::AbstractArray)
    if isempty(xs)
        throw(Abm4Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
