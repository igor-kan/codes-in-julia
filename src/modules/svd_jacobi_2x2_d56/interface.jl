abstract type AbstractAlgorithm_JacobiD56 end

struct Engine_JacobiD56 <: AbstractAlgorithm_JacobiD56
    checked::Bool
end

Engine_JacobiD56() = Engine_JacobiD56(true)
algorithm_slug(::Engine_JacobiD56) = :svd_jacobi_2x2_d56
