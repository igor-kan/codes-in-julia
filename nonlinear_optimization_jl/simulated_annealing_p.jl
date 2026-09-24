module AnnealingP
export boltzmann_probability

function boltzmann_probability(dE::Float64, t::Float64)
    return exp(-dE / t)
end

end # module
