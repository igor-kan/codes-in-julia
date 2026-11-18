abstract type AbstractAlgorithm_Gk37 end

struct Engine_Gk37 <: AbstractAlgorithm_Gk37
    checked::Bool
end

Engine_Gk37() = Engine_Gk37(true)
algorithm_slug(::Engine_Gk37) = :gauss_kronrod_g3k7_jl
