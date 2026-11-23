abstract type AbstractAlgorithm_RidgeD58 end

struct Engine_RidgeD58 <: AbstractAlgorithm_RidgeD58
    checked::Bool
end

Engine_RidgeD58() = Engine_RidgeD58(true)
algorithm_slug(::Engine_RidgeD58) = :ridge_normal_jl_d58
