module HamiltonianH
export total_energy

function total_energy(t_kinetic::Float64, v_pot::Float64)
    return t_kinetic + v_pot
end

end # module
