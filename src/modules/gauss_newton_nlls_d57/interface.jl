abstract type AbstractAlgorithm_GnD57 end

struct Engine_GnD57 <: AbstractAlgorithm_GnD57
    checked::Bool
end

Engine_GnD57() = Engine_GnD57(true)
algorithm_slug(::Engine_GnD57) = :gauss_newton_nlls_d57
