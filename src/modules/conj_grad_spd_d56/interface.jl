abstract type AbstractAlgorithm_CgD56 end

struct Engine_CgD56 <: AbstractAlgorithm_CgD56
    checked::Bool
end

Engine_CgD56() = Engine_CgD56(true)
algorithm_slug(::Engine_CgD56) = :conj_grad_spd_d56
