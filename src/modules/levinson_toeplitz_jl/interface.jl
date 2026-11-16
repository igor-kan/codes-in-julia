abstract type AbstractStructuredSolver end

struct LevinsonToeplitzSolver <: AbstractStructuredSolver
    check_schur::Bool
end

LevinsonToeplitzSolver() = LevinsonToeplitzSolver(true)

function solve_sym_toeplitz end
function build_dense_toeplitz end
