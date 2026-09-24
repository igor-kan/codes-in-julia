module BlochSphere
export bloch_z_coordinate

function bloch_z_coordinate(theta::Float64)
    return cos(theta)
end

end # module
