using Test
adj = [
    [WeightedEdge(2, 4.0), WeightedEdge(3, 1.0)],
    [WeightedEdge(4, 1.0)],
    [WeightedEdge(2, 2.0), WeightedEdge(4, 5.0)],
    WeightedEdge{Float64}[],
]
tree = shortest_paths(QuaternaryHeapDijkstra(), adj, 1)
@test tree.dist == [0.0, 3.0, 1.0, 4.0]
@test reconstruct_path(tree, 4) == [1, 3, 2, 4]
@test verify_bellman_optimality(adj, tree)
