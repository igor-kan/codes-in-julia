struct DbscanPoint
    coords::Vector{Float64}
end

struct DbscanResult
    labels::Vector{Int}
    clusters::Int
    noise::Int
end

struct ModuleMeta_Dbscan
    slug::Symbol
    version::Int
end
