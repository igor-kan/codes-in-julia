function solve_abm4(f::Function, grid::OdeGrid, y0::Float64)
    h = grid.h; n = grid.steps
    t = [grid.t0 + i * h for i in 0:n]
    y = zeros(Float64, n + 1); y[1] = y0
    for i in 1:3
        k1 = f(t[i], y[i])
        k2 = f(t[i] + 0.5h, y[i] + 0.5h * k1)
        k3 = f(t[i] + 0.5h, y[i] + 0.5h * k2)
        k4 = f(t[i] + h, y[i] + h * k3)
        y[i + 1] = y[i] + (h / 6.0) * (k1 + 2k2 + 2k3 + k4)
    end
    for i in 4:n
        f0 = f(t[i], y[i]); fm1 = f(t[i-1], y[i-1]); fm2 = f(t[i-2], y[i-2]); fm3 = f(t[i-3], y[i-3])
        yp = y[i] + (h / 24.0) * (55f0 - 59fm1 + 37fm2 - 9fm3)
        fp1 = f(t[i+1], yp)
        y[i + 1] = y[i] + (h / 24.0) * (9fp1 + 19f0 - 5fm1 + fm2)
    end
    return y[end]
end
