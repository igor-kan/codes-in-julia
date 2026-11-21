abstract type AbstractAlgorithm_ChebD56 end

struct Engine_ChebD56 <: AbstractAlgorithm_ChebD56
    checked::Bool
end

Engine_ChebD56() = Engine_ChebD56(true)
algorithm_slug(::Engine_ChebD56) = :chebyshev_nodes_eval_d56
