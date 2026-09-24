module HarmonicQHO
export qho_ground_state

function qho_ground_state(x::Float64)
    return (1.0 / pi^0.25) * exp(-0.5 * x^2)
end

end # module
