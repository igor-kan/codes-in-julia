module PauliSpin
export pauli_z_exp

function pauli_z_exp(p_up::Float64, p_down::Float64)
    return p_up - p_down
end

end # module
