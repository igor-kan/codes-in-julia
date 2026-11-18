abstract type AbstractAlgorithm_LmOpt end

struct Engine_LmOpt <: AbstractAlgorithm_LmOpt
    checked::Bool
end

Engine_LmOpt() = Engine_LmOpt(true)
algorithm_slug(::Engine_LmOpt) = :levenberg_marquardt_1d_jl
