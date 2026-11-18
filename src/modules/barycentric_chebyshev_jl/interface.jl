abstract type AbstractAlgorithm_BaryCheb end

struct Engine_BaryCheb <: AbstractAlgorithm_BaryCheb
    checked::Bool
end

Engine_BaryCheb() = Engine_BaryCheb(true)
algorithm_slug(::Engine_BaryCheb) = :barycentric_chebyshev_jl
