abstract type AbstractAlgorithm_Strassen end

struct Engine_Strassen <: AbstractAlgorithm_Strassen
    checked::Bool
end

Engine_Strassen() = Engine_Strassen(true)
algorithm_slug(::Engine_Strassen) = :strassen_recursive_matmul_jl_d61
