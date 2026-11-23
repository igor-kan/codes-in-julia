abstract type AbstractAlgorithm_LuD58 end

struct Engine_LuD58 <: AbstractAlgorithm_LuD58
    checked::Bool
end

Engine_LuD58() = Engine_LuD58(true)
algorithm_slug(::Engine_LuD58) = :lu_pivot_jl_d58
