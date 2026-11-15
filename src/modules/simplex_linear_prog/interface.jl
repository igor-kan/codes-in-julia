abstract type AbstractLpSolver end

struct BlandSimplexSolver <: AbstractLpSolver
    max_pivots::Int
end

function maximize_lp end
