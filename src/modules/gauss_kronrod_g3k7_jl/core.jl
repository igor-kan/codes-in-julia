function integrate_g3k7(f::Function, a::Float64, b::Float64)
    mid = 0.5 * (a + b); half = 0.5 * (b - a)
    xg = sqrt(0.6)
    wg0 = 8.0 / 9.0; wg1 = 5.0 / 9.0
    f0 = f(mid); fm = f(mid - xg * half); fp = f(mid + xg * half)
    g3 = half * (wg0 * f0 + wg1 * (fm + fp))
    # 5-point Gauss-Legendre reference for error comparison
    x5_1 = 0.5384693101056831; w5_1 = 0.4786286704993665
    x5_2 = 0.9061798459386640; w5_2 = 0.2369268850561891
    w5_0 = 0.5688888888888889
    k7 = half * (w5_0 * f0 + w5_1 * (f(mid - x5_1*half) + f(mid + x5_1*half)) + w5_2 * (f(mid - x5_2*half) + f(mid + x5_2*half)))
    return GkQuad(k7, g3, abs(k7 - g3))
end
