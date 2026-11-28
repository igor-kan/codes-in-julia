abstract type AbstractAlgorithm_Bezier end

struct Engine_Bezier <: AbstractAlgorithm_Bezier
    checked::Bool
end

Engine_Bezier() = Engine_Bezier(true)
algorithm_slug(::Engine_Bezier) = :bezier_de_casteljau_jl_d61
