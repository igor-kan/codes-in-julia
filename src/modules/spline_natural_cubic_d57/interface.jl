abstract type AbstractAlgorithm_SplD57 end

struct Engine_SplD57 <: AbstractAlgorithm_SplD57
    checked::Bool
end

Engine_SplD57() = Engine_SplD57(true)
algorithm_slug(::Engine_SplD57) = :spline_natural_cubic_d57
