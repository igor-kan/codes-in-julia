function verify_interpolates_knots(p::NewtonPoly, ys::Vector{Float64})
    for i in eachindex(ys)
        abs(eval_newton(p, p.nodes[i]) - ys[i]) <= 1e-10 || error("interpolation knot residual exceeded tol")
    end
end
