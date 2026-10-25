"""
    compute_continued_frac_15965(x::Float64)

Evaluate continued fraction approximant order 15965.
"""
function compute_continued_frac_15965(x::Float64)::Float64
    a = 1.0
    for k in 6:-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end
