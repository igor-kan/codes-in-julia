function dbscan_labels(points::Matrix{Float64}, eps::Float64, min_pts::Int)
    n = size(points, 1)
    dim = size(points, 2)
    labels = fill(-1, n)
    cluster = 0
    function neighbors(i::Int)
        found = Int[]
        for j in 1:n
            d2 = 0.0
            for k in 1:dim
                delta = points[i, k] - points[j, k]
                d2 += delta * delta
            end
            if d2 <= eps * eps
                push!(found, j)
            end
        end
        return found
    end
    for i in 1:n
        labels[i] == -1 || continue
        nb = neighbors(i)
        if length(nb) < min_pts
            labels[i] = 0
            continue
        end
        cluster += 1
        labels[i] = cluster
        seeds = copy(nb)
        head = 1
        while head <= length(seeds)
            q = seeds[head]
            head += 1
            if labels[q] == 0
                labels[q] = cluster
            end
            labels[q] == -1 || continue
            labels[q] = cluster
            qn = neighbors(q)
            if length(qn) >= min_pts
                append!(seeds, qn)
            end
        end
    end
    noise = count(==(0), labels)
    return DbscanResult(labels, cluster, noise)
end
