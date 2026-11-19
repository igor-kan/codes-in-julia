function validate_nonempty_CgSpd(xs::AbstractArray)
    if isempty(xs)
        throw(CgSpdError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
