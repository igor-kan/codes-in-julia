function rk4_scalar(f, y0::Float64, t0::Float64, h::Float64, steps::Int)
    y = y0; t = t0
    for _ in 1:steps
        k1 = f(t, y)
        k2 = f(t + 0.5 * h, y + 0.5 * h * k1)
        k3 = f(t + 0.5 * h, y + 0.5 * h * k2)
        k4 = f(t + h, y + h * k3)
        y += (h / 6.0) * (k1 + 2.0 * k2 + 2.0 * k3 + k4)
        t += h
    end
    return y
end
