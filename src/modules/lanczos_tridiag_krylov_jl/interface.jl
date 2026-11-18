abstract type AbstractAlgorithm_LanczosTr end

struct Engine_LanczosTr <: AbstractAlgorithm_LanczosTr
    checked::Bool
end

Engine_LanczosTr() = Engine_LanczosTr(true)
algorithm_slug(::Engine_LanczosTr) = :lanczos_tridiag_krylov_jl
