function verify_bellman_optimality(adj::Vector{Vector{WeightedEdge{W}}}, tree::ShortestPathTree{W}; tol::W = W(1e-9)) where {W<:AbstractFloat}
    for u in eachindex(adj), e in adj[u]
        if isfinite(tree.dist[u]) && tree.dist[e.to] > tree.dist[u] + e.weight + tol
            throw(DijkstraDomainError("Bellman optimality condition violated"))
        end
    end
    return true
end
