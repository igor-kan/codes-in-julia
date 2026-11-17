function fit_newton(::NewtonMethod, xs::Vector{Float64}, ys::Vector{Float64})
    validate_knots(xs, ys)
    n = length(xs)
    c = copy(ys)
    for j in 2:n
        for i in n:-1:j
            c[i] = (c[i] - c[i - 1]) / (xs[i] - xs[i - j + 1])
        end
    end
    return NewtonPoly(copy(xs), c)
end

function eval_newton(p::NewtonPoly, x::Float64)
    n = length(p.coeffs)
    acc = p.coeffs[n]
    @inbounds for i in (n - 1):-1:1
        acc = acc * (x - p.nodes[i]) + p.coeffs[i]
    end
    return acc
end
