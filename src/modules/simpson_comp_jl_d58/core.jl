function composite_simpson(f, a::Float64, b::Float64, n::Int)
    if n <= 0 || isodd(n)
        error("even positive panel count required")
    end
    h = (b - a) / n
    s = f(a) + f(b)
    for i in 1:(n - 1)
        w = isodd(i) ? 4.0 : 2.0
        s += w * f(a + i * h)
    end
    return s * (h / 3.0)
end
