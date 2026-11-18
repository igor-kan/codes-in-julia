abstract type AbstractAlgorithm_ToeplitzLev end

struct Engine_ToeplitzLev <: AbstractAlgorithm_ToeplitzLev
    checked::Bool
end

Engine_ToeplitzLev() = Engine_ToeplitzLev(true)
algorithm_slug(::Engine_ToeplitzLev) = :toeplitz_levinson_solve_jl
