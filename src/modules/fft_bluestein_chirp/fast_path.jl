function naive_dft_reference(x::Vector{Complex{T}}) where {T<:AbstractFloat}
    n = length(x)
    out = zeros(Complex{T}, n)
    for k in 0:(n - 1)
        acc = zero(Complex{T})
        for j in 0:(n - 1)
            ang = T(-2.0 * pi) * T(j * k) / T(n)
            acc += x[j + 1] * Complex{T}(cos(ang), sin(ang))
        end
        out[k + 1] = acc
    end
    return out
end
