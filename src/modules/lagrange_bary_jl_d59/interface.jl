abstract type AbstractAlgorithm_BaryD59 end

struct Engine_BaryD59 <: AbstractAlgorithm_BaryD59
    checked::Bool
end

Engine_BaryD59() = Engine_BaryD59(true)
algorithm_slug(::Engine_BaryD59) = :lagrange_bary_jl_d59
