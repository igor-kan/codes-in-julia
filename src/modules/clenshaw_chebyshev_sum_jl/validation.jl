function validate_nonempty_Clenshaw(xs::AbstractArray)
    if isempty(xs)
        throw(ClenshawError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
