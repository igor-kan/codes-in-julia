module LandauLevels
export landau_energy

function landau_energy(n::Int, omega_c::Float64)
    return (n + 0.5) * omega_c
end

end # module
