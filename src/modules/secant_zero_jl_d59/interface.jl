abstract type AbstractAlgorithm_SecantD59 end

struct Engine_SecantD59 <: AbstractAlgorithm_SecantD59
    checked::Bool
end

Engine_SecantD59() = Engine_SecantD59(true)
algorithm_slug(::Engine_SecantD59) = :secant_zero_jl_d59
