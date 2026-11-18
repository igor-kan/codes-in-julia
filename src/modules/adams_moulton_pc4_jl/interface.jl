abstract type AbstractAlgorithm_Abm4 end

struct Engine_Abm4 <: AbstractAlgorithm_Abm4
    checked::Bool
end

Engine_Abm4() = Engine_Abm4(true)
algorithm_slug(::Engine_Abm4) = :adams_moulton_pc4_jl
