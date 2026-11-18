function validate_nonempty_LanczosTr(xs::AbstractArray)
    if isempty(xs)
        throw(LanczosTrError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
