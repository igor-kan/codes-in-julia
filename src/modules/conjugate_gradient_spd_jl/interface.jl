abstract type AbstractAlgorithm_CgSpd end

struct Engine_CgSpd <: AbstractAlgorithm_CgSpd
    checked::Bool
end

Engine_CgSpd() = Engine_CgSpd(true)
algorithm_slug(::Engine_CgSpd) = :conjugate_gradient_spd_jl
