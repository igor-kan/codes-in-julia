function parallel_eval_points(p::NewtonPoly, pts::Vector{Float64})
    out = similar(pts)
    Threads.@threads for i in eachindex(pts)
        out[i] = eval_newton(p, pts[i])
    end
    return out
end
