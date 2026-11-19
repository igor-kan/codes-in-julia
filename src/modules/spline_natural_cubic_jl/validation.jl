function validate_nonempty_CubicSpline(xs::AbstractArray)
    if isempty(xs)
        throw(CubicSplineError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
