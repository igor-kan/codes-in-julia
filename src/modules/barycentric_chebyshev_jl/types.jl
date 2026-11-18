struct ChebNodeMesh
    nodes::Vector{Float64}
    weights::Vector{Float64}
end

struct ModuleMeta_BaryCheb
    slug::Symbol
    version::Int
end
