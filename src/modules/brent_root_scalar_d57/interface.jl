abstract type AbstractAlgorithm_SecD57 end

struct Engine_SecD57 <: AbstractAlgorithm_SecD57
    checked::Bool
end

Engine_SecD57() = Engine_SecD57(true)
algorithm_slug(::Engine_SecD57) = :brent_root_scalar_d57
