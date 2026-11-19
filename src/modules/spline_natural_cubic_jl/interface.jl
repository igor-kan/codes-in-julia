abstract type AbstractAlgorithm_CubicSpline end

struct Engine_CubicSpline <: AbstractAlgorithm_CubicSpline
    checked::Bool
end

Engine_CubicSpline() = Engine_CubicSpline(true)
algorithm_slug(::Engine_CubicSpline) = :spline_natural_cubic_jl
