abstract type AbstractDirectSearchSolver end

struct NelderMeadSolver <: AbstractDirectSearchSolver
    step_scale::Float64
end

function nelder_mead_solve end
