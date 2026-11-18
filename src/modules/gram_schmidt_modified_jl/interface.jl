abstract type AbstractAlgorithm_MgsQr end

struct Engine_MgsQr <: AbstractAlgorithm_MgsQr
    checked::Bool
end

Engine_MgsQr() = Engine_MgsQr(true)
algorithm_slug(::Engine_MgsQr) = :gram_schmidt_modified_jl
