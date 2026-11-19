function fit_natural_spline(x::Vector{Float64}, y::Vector{Float64})
    n = length(x) - 1
    h = [x[i + 1] - x[i] for i in 1:n]
    A = zeros(Float64, n + 1, n + 1); rhs = zeros(Float64, n + 1)
    A[1, 1] = 1.0; A[n + 1, n + 1] = 1.0
    for i in 2:n
        A[i, i - 1] = h[i - 1]; A[i, i] = 2 * (h[i - 1] + h[i]); A[i, i + 1] = h[i]
        rhs[i] = 3.0 * ((y[i + 1] - y[i]) / h[i] - (y[i] - y[i - 1]) / h[i - 1])
    end
    c = A \ rhs
    b = [((y[i + 1] - y[i]) / h[i]) - (h[i] / 3.0) * (c[i + 1] + 2.0 * c[i]) for i in 1:n]
    d = [(c[i + 1] - c[i]) / (3.0 * h[i]) for i in 1:n]
    return CubicSpline(x, y[1:n], b, c[1:n], d)
end

function eval_spline(s::CubicSpline, xq::Float64)
    idx = clamp(searchsortedlast(s.x, xq), 1, length(s.b))
    dx = xq - s.x[idx]
    return s.a[idx] + dx * (s.b[idx] + dx * (s.c[idx] + dx * s.d[idx]))
end
