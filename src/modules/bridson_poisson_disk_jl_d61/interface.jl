abstract type AbstractAlgorithm_Bridson end

struct Engine_Bridson <: AbstractAlgorithm_Bridson
    checked::Bool
end

Engine_Bridson() = Engine_Bridson(true)
algorithm_slug(::Engine_Bridson) = :bridson_poisson_disk_jl_d61
