abstract type AbstractAlgorithm_SimpD58 end

struct Engine_SimpD58 <: AbstractAlgorithm_SimpD58
    checked::Bool
end

Engine_SimpD58() = Engine_SimpD58(true)
algorithm_slug(::Engine_SimpD58) = :simpson_comp_jl_d58
