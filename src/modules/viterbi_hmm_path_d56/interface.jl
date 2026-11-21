abstract type AbstractAlgorithm_VitD56 end

struct Engine_VitD56 <: AbstractAlgorithm_VitD56
    checked::Bool
end

Engine_VitD56() = Engine_VitD56(true)
algorithm_slug(::Engine_VitD56) = :viterbi_hmm_path_d56
