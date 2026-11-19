abstract type AbstractAlgorithm_Svd2Res end

struct Engine_Svd2Res <: AbstractAlgorithm_Svd2Res
    checked::Bool
end

Engine_Svd2Res() = Engine_Svd2Res(true)
algorithm_slug(::Engine_Svd2Res) = :svd_2x2_golub_kahan_jl
