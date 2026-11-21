abstract type AbstractAlgorithm_FftD56 end

struct Engine_FftD56 <: AbstractAlgorithm_FftD56
    checked::Bool
end

Engine_FftD56() = Engine_FftD56(true)
algorithm_slug(::Engine_FftD56) = :fft_cooley_tukey_d56
