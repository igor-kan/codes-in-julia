abstract type AbstractAlgorithm_CholD59 end

struct Engine_CholD59 <: AbstractAlgorithm_CholD59
    checked::Bool
end

Engine_CholD59() = Engine_CholD59(true)
algorithm_slug(::Engine_CholD59) = :cholesky_spd_jl_d59
