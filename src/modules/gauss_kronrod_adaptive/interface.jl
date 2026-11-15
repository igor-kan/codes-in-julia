abstract type AbstractAdaptiveIntegrator end

struct GaussKronrod15 <: AbstractAdaptiveIntegrator
    max_depth::Int
end

function quad_gk end
