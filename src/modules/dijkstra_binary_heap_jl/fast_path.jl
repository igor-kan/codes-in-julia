function reconstruct_path(tree::ShortestPathTree{W}, target::Int) where {W<:Real}
    if !isfinite(tree.dist[target])
        return Int[]
    end
    path = Int[]
    cur = target
    while cur != 0
        push!(path, cur)
        cur == tree.source && break
        cur = tree.parent[cur]
    end
    return reverse(path)
end
