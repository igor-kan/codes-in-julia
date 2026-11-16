t0 = time_ns()
acc = 0.0
for _it in 1:50
  adj = [[WeightedEdge((i%64)+1, 1.0), WeightedEdge(((i+7)%64)+1, 3.0)] for i in 1:64]
  acc += shortest_paths(QuaternaryHeapDijkstra(), adj, 1).dist[32]
end
ms = (time_ns() - t0) / 50e6
println("dijkstra_binary_heap_jl ms=", round(ms; digits=4), " acc=", acc)
