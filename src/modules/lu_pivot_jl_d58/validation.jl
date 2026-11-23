function validate_nonempty_LuD58(xs::AbstractArray)
    if isempty(xs)
        throw(LuD58Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
