function hybrid_root(f, a::Float64, b::Float64; tol::Float64 = 1e-12, maxiter::Int = 80)
    fa, fb = f(a), f(b)
    if fa * fb > 0.0
        error("root must be bracketed")
    end
    for _ in 1:maxiter
        if abs(b - a) < tol
            break
        end
        s = a - fa * (b - a) / (fb - fa)
        use_sec = (s > min(a, b)) && (s < max(a, b))
        x = use_sec ? s : 0.5 * (a + b)
        fx = f(x)
        if abs(fx) < tol
            return x
        end
        if fa * fx < 0.0
            b = x; fb = fx
        else
            a = x; fa = fx
        end
    end
    return 0.5 * (a + b)
end
