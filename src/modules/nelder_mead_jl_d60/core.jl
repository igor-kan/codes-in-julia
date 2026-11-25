function nelder_mead_min(f::Function, x0::Vector{Float64}; max_iter::Int = 300, step::Float64 = 0.25)
    n = length(x0)
    pts = [copy(x0) for _ in 1:(n + 1)]
    for i in 1:n
        pts[i + 1][i] += step
    end
    vals = [f(p) for p in pts]
    for it in 1:max_iter
        perm = sortperm(vals)
        pts = pts[perm]; vals = vals[perm]
        abs(vals[end] - vals[1]) < 1e-12 && return SimplexResult(pts[1], vals[1], it)
        cen = zeros(Float64, n)
        for i in 1:n; cen .+= pts[i]; end
        cen ./= n
        xr = cen .+ (cen .- pts[end])
        fr = f(xr)
        if vals[1] <= fr < vals[n]
            pts[end] = xr; vals[end] = fr
        elseif fr < vals[1]
            xe = cen .+ 2.0 .* (xr .- cen)
            fe = f(xe)
            if fe < fr; pts[end] = xe; vals[end] = fe; else pts[end] = xr; vals[end] = fr; end
        else
            xc = (fr < vals[end]) ? (cen .+ 0.5 .* (xr .- cen)) : (cen .+ 0.5 .* (pts[end] .- cen))
            fc = f(xc)
            if fc < vals[end]
                pts[end] = xc; vals[end] = fc
            else
                for i in 2:(n + 1)
                    pts[i] = pts[1] .+ 0.5 .* (pts[i] .- pts[1])
                    vals[i] = f(pts[i])
                end
            end
        end
    end
    perm = sortperm(vals)
    return SimplexResult(pts[perm[1]], vals[perm[1]], max_iter)
end
