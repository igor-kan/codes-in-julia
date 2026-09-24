module BerryPhase
export berry_phase_solid_angle

function berry_phase_solid_angle(omega::Float64)
    return -0.5 * omega
end

end # module
