abstract type AbstractAlgorithm_GaussLeg end

struct Engine_GaussLeg <: AbstractAlgorithm_GaussLeg
    checked::Bool
end

Engine_GaussLeg() = Engine_GaussLeg(true)
algorithm_slug(::Engine_GaussLeg) = :gauss_legendre_jl_d60
