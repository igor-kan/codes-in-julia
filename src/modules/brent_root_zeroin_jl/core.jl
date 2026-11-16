function find_root(
    ::BrentSolver,
    f,
    a0::T,
    b0::T,
    cfg::BrentConfig{T} = BrentConfig(),
) where {T<:AbstractFloat}
    validate_bracket(f, a0, b0)
    a, b = a0, b0
    fa, fb = T(f(a)), T(f(b))
    if abs(fa) < abs(fb)
        a, b = b, a
        fa, fb = fb, fa
    end
    c = a
    fc = fa
    d = b - a
    mflag = true

    for it in 1:cfg.max_iter
        if fb == zero(T) || abs(b - a) <= cfg.tol_x
            return RootOutcome{T}(b, fb, it, true)
        end
        s = zero(T)
        if fa != fc && fb != fc
            s = (a * fb * fc) / ((fa - fb) * (fa - fc)) +
                (b * fa * fc) / ((fb - fa) * (fb - fc)) +
                (c * fa * fb) / ((fc - fa) * (fc - fb))
        else
            s = b - fb * (b - a) / (fb - fa)
        end
        lo = min((3 * a + b) / 4, b)
        hi = max((3 * a + b) / 4, b)
        cond1 = !(lo <= s <= hi)
        cond2 = mflag && abs(s - b) >= abs(b - c) / 2
        cond3 = !mflag && abs(s - b) >= abs(c - d) / 2
        cond4 = mflag && abs(b - c) < cfg.tol_x
        cond5 = !mflag && abs(c - d) < cfg.tol_x
        if cond1 || cond2 || cond3 || cond4 || cond5
            s = (a + b) / 2
            mflag = true
        else
            mflag = false
        end
        fs = T(f(s))
        d = c
        c = b
        fc = fb
        if fa * fs < zero(T)
            b = s
            fb = fs
        else
            a = s
            fa = fs
        end
        if abs(fa) < abs(fb)
            a, b = b, a
            fa, fb = fb, fa
        end
    end
    return RootOutcome{T}(b, fb, cfg.max_iter, abs(fb) < T(1e-8))
end
