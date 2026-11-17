abstract type AllPairsSolver end
struct FloydWarshallSolver <: AllPairsSolver
    check_neg_cycle::Bool
end
FloydWarshallSolver() = FloydWarshallSolver(true)
solver_tag(::FloydWarshallSolver) = "FloydWarshall"
