function solve_apsp(::FloydWarshallSolver, weights::Matrix{Float64})
    n = validate_apsp_matrix(weights)
    d = copy(weights)
    nxt = zeros(Int, n, n)
    for i in 1:n, j in 1:n
        if isfinite(d[i, j]) && i != j
            nxt[i, j] = j
        end
    end
    @inbounds for k in 1:n
        for i in 1:n
            dik = d[i, k]
            isfinite(dik) || continue
            for j in 1:n
                cand = dik + d[k, j]
                if cand < d[i, j]
                    d[i, j] = cand
                    nxt[i, j] = nxt[i, k]
                end
            end
        end
    end
    for i in 1:n
        d[i, i] >= -1e-12 || throw(ApspError(:negcycle, "negative weight cycle detected"))
    end
    return ApspMatrix(d, nxt)
end
