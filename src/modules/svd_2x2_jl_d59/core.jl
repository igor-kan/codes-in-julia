function sym2_spectrum(a::Float64, b::Float64, d::Float64)
    tr = a + d
    disc = hypot(a - d, 2.0 * b)
    return 0.5 * (tr + disc), 0.5 * (tr - disc)
end
