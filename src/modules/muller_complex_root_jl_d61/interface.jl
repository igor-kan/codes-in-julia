abstract type AbstractAlgorithm_Muller end

struct Engine_Muller <: AbstractAlgorithm_Muller
    checked::Bool
end

Engine_Muller() = Engine_Muller(true)
algorithm_slug(::Engine_Muller) = :muller_complex_root_jl_d61
