abstract type AbstractAlgorithm_NelderD56 end

struct Engine_NelderD56 <: AbstractAlgorithm_NelderD56
    checked::Bool
end

Engine_NelderD56() = Engine_NelderD56(true)
algorithm_slug(::Engine_NelderD56) = :nelder_mead_simplex_d56
