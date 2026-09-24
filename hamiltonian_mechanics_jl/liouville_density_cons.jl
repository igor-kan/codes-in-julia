module LiouvillePhase
export phase_space_divergence

function phase_space_divergence(div_q::Float64, div_p::Float64)
    return div_q + div_p
end

end # module
