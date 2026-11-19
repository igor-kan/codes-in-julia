function validate_nonempty_Rk4Res(xs::AbstractArray)
    if isempty(xs)
        throw(Rk4ResError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
