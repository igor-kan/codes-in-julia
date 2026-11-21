function fft_rad2(x::AbstractVector{<:Number})
    n = length(x)
    if n <= 1
        return ComplexF64.(x)
    end
    even = fft_rad2(x[1:2:end])
    odd = fft_rad2(x[2:2:end])
    half = div(n, 2)
    out = Vector{ComplexF64}(undef, n)
    for k in 0:(half - 1)
        w = cis(-2.0 * pi * k / n) * odd[k + 1]
        out[k + 1] = even[k + 1] + w
        out[k + 1 + half] = even[k + 1] - w
    end
    return out
end
