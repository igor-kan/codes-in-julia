using Test
adj = [WeightedEdge{Float64}[] for _ in 1:12]
for i in 1:11
    push!(adj[i], WeightedEdge(i + 1, Float64((i % 5) + 1)))
    if i <= 9
        push!(adj[i], WeightedEdge(i + 3, 1.5))
    end
end
trees = all_pairs_shortest_paths(adj)
for t in trees
    @test verify_bellman_optimality(adj, t)
end
