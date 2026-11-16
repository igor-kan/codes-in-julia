function bisection_count(f, a::T, b::T, tol::T) where {T<:AbstractFloat}
    lo, hi = a, b
    flo = f(lo)
    steps = 0
    while (hi - lo) > tol && steps < 100
        mid = (lo + hi) / 2
        fm = f(mid)
        if flo * fm <= 0
            hi = mid
        else
            lo = mid
            flo = fm
        end
        steps += 1
    end
    return (lo + hi) / 2, steps
end
