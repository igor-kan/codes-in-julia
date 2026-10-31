"""
    compute_continued_frac_16345(x::Float64)

Evaluate continued fraction approximant order 16345.
"""
function compute_continued_frac_16345(x::Float64)::Float64
    a = 1.0
    for k in 2:-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end
