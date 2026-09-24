module VirialTheorem
export virial_ratio

function virial_ratio(t_kinetic::Float64, v_pot::Float64)
    return 2.0 * t_kinetic + v_pot
end

end # module
