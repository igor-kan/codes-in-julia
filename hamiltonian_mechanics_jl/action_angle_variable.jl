module ActionAngle
export action_variable_j

function action_variable_j(energy::Float64, omega::Float64)
    return energy / omega
end

end # module
