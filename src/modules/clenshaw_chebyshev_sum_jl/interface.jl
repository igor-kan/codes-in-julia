abstract type AbstractAlgorithm_Clenshaw end

struct Engine_Clenshaw <: AbstractAlgorithm_Clenshaw
    checked::Bool
end

Engine_Clenshaw() = Engine_Clenshaw(true)
algorithm_slug(::Engine_Clenshaw) = :clenshaw_chebyshev_sum_jl
