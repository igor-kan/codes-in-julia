function validate_nonempty_MgsQr(xs::AbstractArray)
    if isempty(xs)
        throw(MgsQrError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
