function _heap_push!(heap::Vector{Tuple{W, Int}}, item::Tuple{W, Int}) where {W<:Real}
    push!(heap, item)
    i = length(heap)
    while i > 1
        p = (i + 2) ÷ 4
        if heap[i][1] < heap[p][1]
            heap[i], heap[p] = heap[p], heap[i]
            i = p
        else
            break
        end
    end
end

function _heap_pop!(heap::Vector{Tuple{W, Int}}) where {W<:Real}
    top = heap[1]
    last_item = pop!(heap)
    if !isempty(heap)
        heap[1] = last_item
        n = length(heap)
        i = 1
        while true
            c1 = 4 * i - 2
            c1 > n && break
            best = c1
            limit = min(n, 4 * i + 1)
            for c in (c1 + 1):limit
                if heap[c][1] < heap[best][1]
                    best = c
                end
            end
            if heap[best][1] < heap[i][1]
                heap[i], heap[best] = heap[best], heap[i]
                i = best
            else
                break
            end
        end
    end
    return top
end

function shortest_paths(
    ::QuaternaryHeapDijkstra,
    adj::Vector{Vector{WeightedEdge{W}}},
    src::Int,
) where {W<:AbstractFloat}
    validate_adj(adj, src)
    n = length(adj)
    dist = fill(typemax(W), n)
    parent = fill(0, n)
    dist[src] = zero(W)
    pq = Tuple{W, Int}[(zero(W), src)]
    while !isempty(pq)
        d, u = _heap_pop!(pq)
        d > dist[u] && continue
        for e in adj[u]
            nd = d + e.weight
            if nd < dist[e.to]
                dist[e.to] = nd
                parent[e.to] = u
                _heap_push!(pq, (nd, e.to))
            end
        end
    end
    return ShortestPathTree{W}(dist, parent, src)
end
