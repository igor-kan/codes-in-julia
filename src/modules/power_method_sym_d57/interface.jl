abstract type AbstractAlgorithm_PowSymD57 end

struct Engine_PowSymD57 <: AbstractAlgorithm_PowSymD57
    checked::Bool
end

Engine_PowSymD57() = Engine_PowSymD57(true)
algorithm_slug(::Engine_PowSymD57) = :power_method_sym_d57
