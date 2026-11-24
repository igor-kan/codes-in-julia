function secant_solve(f, x0::Float64, x1::Float64; tol::Float64 = 1e-12, maxiter::Int = 50)
    f0 = f(x0); f1 = f(x1)
    for _ in 1:maxiter
        if abs(f1) < tol || abs(f1 - f0) < 1e-18
            return x1
        end
        x2 = x1 - f1 * (x1 - x0) / (f1 - f0)
        x0, f0 = x1, f1
        x1 = x2; f1 = f(x1)
    end
    return x1
end
