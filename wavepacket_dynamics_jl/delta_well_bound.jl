module DeltaWell
export delta_bound_energy

function delta_bound_energy(alpha::Float64)
    return -0.5 * alpha^2
end

end # module
