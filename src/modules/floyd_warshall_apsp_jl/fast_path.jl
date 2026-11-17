function reconstruct_path(res::ApspMatrix, u::Int, v::Int)
    res.next_hop[u, v] == 0 && u != v && return Int[]
    path = [u]
    cur = u
    while cur != v
        cur = res.next_hop[cur, v]
        push!(path, cur)
    end
    return path
end
