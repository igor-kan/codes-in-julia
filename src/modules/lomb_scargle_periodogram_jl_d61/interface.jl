abstract type AbstractAlgorithm_Lomb end

struct Engine_Lomb <: AbstractAlgorithm_Lomb
    checked::Bool
end

Engine_Lomb() = Engine_Lomb(true)
algorithm_slug(::Engine_Lomb) = :lomb_scargle_periodogram_jl_d61
