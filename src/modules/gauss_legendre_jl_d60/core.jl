function gauss_legendre_rule(n::Int)
    nodes = zeros(Float64, n)
    weights = zeros(Float64, n)
    m = div(n + 1, 2)
    for i in 1:m
        z = cos(pi * (i - 0.25) / (n + 0.5))
        pp = 0.0
        for _ in 1:25
            p1 = 1.0; p2 = 0.0
            for j in 1:n
                p3 = p2; p2 = p1
                p1 = ((2.0 * j - 1.0) * z * p2 - (j - 1.0) * p3) / j
            end
            pp = n * (z * p1 - p2) / (z * z - 1.0)
            z1 = z; z = z1 - p1 / pp
            abs(z - z1) < 1e-15 && break
        end
        nodes[i] = -z; nodes[n + 1 - i] = z
        w = 2.0 / ((1.0 - z * z) * pp * pp)
        weights[i] = w; weights[n + 1 - i] = w
    end
    return QuadRule(nodes, weights, n)
end
