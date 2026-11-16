function all_pairs_shortest_paths(adj::Vector{Vector{WeightedEdge{W}}}) where {W<:AbstractFloat}
    n = length(adj)
    trees = Vector{ShortestPathTree{W}}(undef, n)
    solver = QuaternaryHeapDijkstra()
    Threads.@threads for s in 1:n
        trees[s] = shortest_paths(solver, adj, s)
    end
    return trees
end
