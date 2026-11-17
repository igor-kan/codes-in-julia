function verify_triangle_inequality(res::ApspMatrix)
    n = size(res.dist, 1)
    for i in 1:n, j in 1:n, k in 1:n
        res.dist[i, j] <= res.dist[i, k] + res.dist[k, j] + 1e-10 || error("triangle inequality failed")
    end
end
