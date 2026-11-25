function validate_nonempty_Arnoldi(xs::AbstractArray)
    if isempty(xs)
        throw(ArnoldiError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
