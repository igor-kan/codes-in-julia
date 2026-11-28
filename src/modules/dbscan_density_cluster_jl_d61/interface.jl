abstract type AbstractAlgorithm_Dbscan end

struct Engine_Dbscan <: AbstractAlgorithm_Dbscan
    checked::Bool
end

Engine_Dbscan() = Engine_Dbscan(true)
algorithm_slug(::Engine_Dbscan) = :dbscan_density_cluster_jl_d61
