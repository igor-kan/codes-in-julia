abstract type AbstractAlgorithm_Rk4Res end

struct Engine_Rk4Res <: AbstractAlgorithm_Rk4Res
    checked::Bool
end

Engine_Rk4Res() = Engine_Rk4Res(true)
algorithm_slug(::Engine_Rk4Res) = :rk4_adaptive_step_jl
