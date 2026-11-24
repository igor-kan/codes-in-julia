abstract type AbstractAlgorithm_Rk4JlD59 end

struct Engine_Rk4JlD59 <: AbstractAlgorithm_Rk4JlD59
    checked::Bool
end

Engine_Rk4JlD59() = Engine_Rk4JlD59(true)
algorithm_slug(::Engine_Rk4JlD59) = :rk4_ode_jl_d59
