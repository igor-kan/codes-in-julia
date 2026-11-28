function validate_nonempty_Strassen(xs::AbstractArray)
    if isempty(xs)
        throw(StrassenError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
