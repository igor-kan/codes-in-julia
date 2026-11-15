function nelder_mead_solve(
    solver::NelderMeadSolver,
    fn,
    x0::Vector{T},
    opts::NmOptions{T} = NmOptions(),
) where {T<:AbstractFloat}
    validate_nm_start(x0, opts)
    d = length(x0)
    verts = Vector{Vector{T}}(undef, d + 1)
    fvals = Vector{T}(undef, d + 1)
    verts[1] = copy(x0)
    fvals[1] = T(fn(x0))
    for j in 1:d
        v = copy(x0)
        h = abs(v[j]) > T(1e-8) ? T(solver.step_scale) * v[j] : T(0.00025)
        v[j] += h
        verts[j + 1] = v
        fvals[j + 1] = T(fn(v))
    end

    converged = false
    iters = 0
    for k in 1:opts.max_iter
        perm = sortperm(fvals)
        verts = verts[perm]
        fvals = fvals[perm]
        iters = k
        xspan = maximum(maximum(abs, verts[j] .- verts[1]) for j in 2:(d + 1))
        fspan = maximum(abs, fvals .- fvals[1])
        if xspan < opts.tol && fspan < opts.tol
            converged = true
            break
        end
        centroid = zeros(T, d)
        for j in 1:d
            @. centroid += verts[j]
        end
        centroid ./= T(d)

        xr = centroid .+ opts.alpha .* (centroid .- verts[d + 1])
        fr = T(fn(xr))
        if fr < fvals[1]
            xe = centroid .+ opts.gamma .* (xr .- centroid)
            fe = T(fn(xe))
            verts[d + 1] = fe < fr ? xe : xr
            fvals[d + 1] = fe < fr ? fe : fr
        elseif fr < fvals[d]
            verts[d + 1] = xr
            fvals[d + 1] = fr
        else
            shrunk = true
            if fr < fvals[d + 1]
                xc = centroid .+ opts.rho .* (xr .- centroid)
                fc = T(fn(xc))
                if fc <= fr
                    verts[d + 1] = xc; fvals[d + 1] = fc; shrunk = false
                end
            else
                xic = centroid .- opts.rho .* (centroid .- verts[d + 1])
                fic = T(fn(xic))
                if fic < fvals[d + 1]
                    verts[d + 1] = xic; fvals[d + 1] = fic; shrunk = false
                end
            end
            if shrunk
                for j in 2:(d + 1)
                    @. verts[j] = verts[1] + opts.sigma * (verts[j] - verts[1])
                    fvals[j] = T(fn(verts[j]))
                end
            end
        end
    end
    return NmResult{T}(verts[1], fvals[1], iters, converged)
end
