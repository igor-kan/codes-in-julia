function muller_root(coeffs::Vector{Float64}, x0::ComplexF64; max_iter::Int = 100, tol::Float64 = 1e-12)
    f(z) = sum(coeffs[k + 1] * z^k for k in 0:(length(coeffs) - 1))
    x_prev = x0
    x_cur = x0 + 0.5
    x_next = x0 - 0.5
    for it in 1:max_iter
        h1 = x_cur - x_prev
        h2 = x_next - x_cur
        d1 = (f(x_cur) - f(x_prev)) / h1
        d2 = (f(x_next) - f(x_cur)) / h2
        a = (d2 - d1) / (h2 + h1)
        b = a * h2 + d2
        c = f(x_next)
        disc = sqrt(b * b - 4.0 * a * c)
        den = abs(b + disc) >= abs(b - disc) ? (b + disc) : (b - disc)
        dx = den == 0 ? 0.0 : -2.0 * c / den
        x_prev, x_cur, x_next = x_cur, x_next, x_next + dx
        if abs(dx) < tol
            return MullerResult(x_next, abs(f(x_next)), it)
        end
    end
    return MullerResult(x_next, abs(f(x_next)), max_iter)
end
