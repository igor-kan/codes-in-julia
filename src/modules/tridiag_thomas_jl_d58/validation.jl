function validate_nonempty_TdmaD58(xs::AbstractArray)
    if isempty(xs)
        throw(TdmaD58Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
