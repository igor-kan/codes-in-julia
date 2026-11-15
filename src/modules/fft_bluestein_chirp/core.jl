function _radix2_fft!(buf::Vector{Complex{T}}, inverse::Bool) where {T<:AbstractFloat}
    n = length(buf)
    j = 0
    for i in 1:(n - 1)
        bit = n >> 1
        while (j & bit) != 0
            j = xor(j, bit)
            bit >>= 1
        end
        j = xor(j, bit)
        if i < j
            buf[i + 1], buf[j + 1] = buf[j + 1], buf[i + 1]
        end
    end
    len = 2
    s = inverse ? T(2.0 * pi) : T(-2.0 * pi)
    while len <= n
        half = len >> 1
        ang = s / len
        wlen = Complex{T}(cos(ang), sin(ang))
        for i in 1:len:n
            w = one(Complex{T})
            for k in 0:(half - 1)
                u = buf[i + k]
                t = w * buf[i + k + half]
                buf[i + k] = u + t
                buf[i + k + half] = u - t
                w *= wlen
            end
        end
        len <<= 1
    end
    if inverse
        buf ./= n
    end
    return buf
end

function build_bluestein_plan(n::Int, ::Type{T} = Float64) where {T<:AbstractFloat}
    validate_dft_length(n)
    m = 1
    while m < 2 * n - 1
        m <<= 1
    end
    chirp = Vector{Complex{T}}(undef, n)
    b = zeros(Complex{T}, m)
    for k in 0:(n - 1)
        ang = T(pi) * T(k * k) / T(n)
        chirp[k + 1] = Complex{T}(cos(ang), -sin(ang))
        inv_c = Complex{T}(cos(ang), sin(ang))
        b[k + 1] = inv_c
        if k > 0
            b[m - k + 1] = inv_c
        end
    end
    _radix2_fft!(b, false)
    return BluesteinPlan{T}(n, m, chirp, b)
end

function execute_bluestein(plan::BluesteinPlan{T}, x::Vector{Complex{T}}) where {T<:AbstractFloat}
    length(x) == plan.n || throw(BluesteinDimensionError("input length disagrees with plan"))
    a = zeros(Complex{T}, plan.m_pow2)
    for k in 1:plan.n
        a[k] = x[k] * plan.chirp[k]
    end
    _radix2_fft!(a, false)
    @. a = a * plan.kernel_fft
    _radix2_fft!(a, true)
    return Complex{T}[a[k] * plan.chirp[k] for k in 1:plan.n]
end
