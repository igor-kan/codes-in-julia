abstract type AbstractSpdSolver end

struct JacobiCgSolver <: AbstractSpdSolver
    use_jacobi::Bool
end

function solve_pcg end
