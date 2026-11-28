abstract type AbstractAlgorithm_Lz4 end

struct Engine_Lz4 <: AbstractAlgorithm_Lz4
    checked::Bool
end

Engine_Lz4() = Engine_Lz4(true)
algorithm_slug(::Engine_Lz4) = :lz4_block_codec_jl_d61
