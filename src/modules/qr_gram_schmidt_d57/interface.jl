abstract type AbstractAlgorithm_MgsD57 end

struct Engine_MgsD57 <: AbstractAlgorithm_MgsD57
    checked::Bool
end

Engine_MgsD57() = Engine_MgsD57(true)
algorithm_slug(::Engine_MgsD57) = :qr_gram_schmidt_d57
