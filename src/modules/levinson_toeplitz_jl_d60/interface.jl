abstract type AbstractAlgorithm_Levinson end

struct Engine_Levinson <: AbstractAlgorithm_Levinson
    checked::Bool
end

Engine_Levinson() = Engine_Levinson(true)
algorithm_slug(::Engine_Levinson) = :levinson_toeplitz_jl_d60
