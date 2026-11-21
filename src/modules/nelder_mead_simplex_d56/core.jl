function nelder_mead_2d(f, x0::Vector{Float64}; maxiter::Int = 80)
    pts = [copy(x0), x0 .+ [0.5, 0.0], x0 .+ [0.0, 0.5]]
    vals = [f(p) for p in pts]
    for _ in 1:maxiter
        ord = sortperm(vals)
        pts = pts[ord]
        vals = vals[ord]
        centroid = 0.5 .* (pts[1] .+ pts[2])
        xr = centroid .+ (centroid .- pts[3])
        fr = f(xr)
        if vals[1] <= fr < vals[2]
            pts[3] = xr; vals[3] = fr
        elseif fr < vals[1]
            xe = centroid .+ 2.0 .* (xr .- centroid)
            fe = f(xe)
            if fe < fr
                pts[3] = xe; vals[3] = fe
            else
                pts[3] = xr; vals[3] = fr
            end
        else
            xc = centroid .+ 0.5 .* (pts[3] .- centroid)
            fc = f(xc)
            if fc < vals[3]
                pts[3] = xc; vals[3] = fc
            else
                for i in 2:3
                    pts[i] = pts[1] .+ 0.5 .* (pts[i] .- pts[1])
                    vals[i] = f(pts[i])
                end
            end
        end
    end
    return pts[1], vals[1]
end
