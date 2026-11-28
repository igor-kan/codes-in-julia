abstract type AbstractAlgorithm_Bwt end

struct Engine_Bwt <: AbstractAlgorithm_Bwt
    checked::Bool
end

Engine_Bwt() = Engine_Bwt(true)
algorithm_slug(::Engine_Bwt) = :burrows_wheeler_jl_d61
