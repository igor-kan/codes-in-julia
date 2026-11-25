abstract type AbstractAlgorithm_Arnoldi end

struct Engine_Arnoldi <: AbstractAlgorithm_Arnoldi
    checked::Bool
end

Engine_Arnoldi() = Engine_Arnoldi(true)
algorithm_slug(::Engine_Arnoldi) = :krylov_arnoldi_jl_d60
