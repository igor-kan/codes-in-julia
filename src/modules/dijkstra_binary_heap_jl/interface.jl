abstract type AbstractShortestPathSolver end

struct QuaternaryHeapDijkstra <: AbstractShortestPathSolver
    arity::Int
end

QuaternaryHeapDijkstra() = QuaternaryHeapDijkstra(4)

function shortest_paths end
function reconstruct_path end
