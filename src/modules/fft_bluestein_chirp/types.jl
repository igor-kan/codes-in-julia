struct BluesteinPlan{T<:AbstractFloat}
    n::Int
    m_pow2::Int
    chirp::Vector{Complex{T}}
    kernel_fft::Vector{Complex{T}}
end
