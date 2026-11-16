function validate_adj(adj::Vector{Vector{WeightedEdge{W}}}, src::Int) where {W<:Real}
    n = length(adj)
    if n == 0 || src < 1 || src > n
        throw(DijkstraDimensionError("invalid graph or source index"))
    end
    for es in adj, e in es
        if e.to < 1 || e.to > n || e.weight < zero(W)
            throw(DijkstraDomainError("negative weight or vertex out of bounds"))
        end
    end
    return true
end
