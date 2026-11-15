abstract type AbstractQuasiNewtonSolver end

struct LbfgsSolver <: AbstractQuasiNewtonSolver
    default_history::Int
end

function minimize_smooth end
function two_loop_direction end
