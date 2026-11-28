function validate_nonempty_Bezier(xs::AbstractArray)
    if isempty(xs)
        throw(BezierError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
