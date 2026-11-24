function validate_nonempty_Rk4JlD59(xs::AbstractArray)
    if isempty(xs)
        throw(Rk4JlD59Error(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
