struct QuadRule
    nodes::Vector{Float64}
    weights::Vector{Float64}
    order::Int
end

struct ModuleMeta_GaussLeg
    slug::Symbol
    version::Int
end
