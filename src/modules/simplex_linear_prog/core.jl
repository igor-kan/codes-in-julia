function maximize_lp(solver::BlandSimplexSolver, lp::StandardLp{T}) where {T<:AbstractFloat}
    validate_lp_inputs(lp)
    m, n = size(lp.A)
    cols = n + m
    Tmat = zeros(T, m + 1, cols + 1)
    Tmat[1:m, 1:n] .= lp.A
    for i in 1:m
        Tmat[i, n + i] = one(T)
        Tmat[i, end] = lp.b[i]
    end
    Tmat[end, 1:n] .= -lp.c
    basis = collect((n + 1):(n + m))

    pivots = 0
    while pivots < solver.max_pivots
        entering = 0
        for j in 1:cols
            if Tmat[end, j] < -T(1e-10)
                entering = j
                break
            end
        end
        if entering == 0
            x = zeros(T, n)
            for i in 1:m
                if basis[i] <= n
                    x[basis[i]] = Tmat[i, end]
                end
            end
            return LpSolution{T}(:optimal, Tmat[end, end], x, pivots)
        end
        leaving = 0
        best_ratio = T(Inf)
        for i in 1:m
            a_ie = Tmat[i, entering]
            if a_ie > T(1e-10)
                r = Tmat[i, end] / a_ie
                if r < best_ratio - T(1e-12) || (abs(r - best_ratio) <= T(1e-12) && basis[i] < basis[leaving])
                    best_ratio = r
                    leaving = i
                end
            end
        end
        leaving == 0 && return LpSolution{T}(:unbounded, T(Inf), zeros(T, n), pivots)
        inv_piv = one(T) / Tmat[leaving, entering]
        @views Tmat[leaving, :] .*= inv_piv
        for i in 1:(m + 1)
            i == leaving && continue
            f = Tmat[i, entering]
            abs(f) < T(1e-15) && continue
            @views @. Tmat[i, :] -= f * Tmat[leaving, :]
        end
        basis[leaving] = entering
        pivots += 1
    end
    throw(SimplexDomainError("max pivots exceeded"))
end
