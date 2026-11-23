abstract type AbstractAlgorithm_TdmaD58 end

struct Engine_TdmaD58 <: AbstractAlgorithm_TdmaD58
    checked::Bool
end

Engine_TdmaD58() = Engine_TdmaD58(true)
algorithm_slug(::Engine_TdmaD58) = :tridiag_thomas_jl_d58
