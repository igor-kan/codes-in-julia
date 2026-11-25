abstract type AbstractAlgorithm_NelderMead end

struct Engine_NelderMead <: AbstractAlgorithm_NelderMead
    checked::Bool
end

Engine_NelderMead() = Engine_NelderMead(true)
algorithm_slug(::Engine_NelderMead) = :nelder_mead_jl_d60
