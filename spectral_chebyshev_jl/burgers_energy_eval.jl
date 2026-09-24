module BurgersEnergy
export l2_energy_integral

function l2_energy_integral(u_sq_sum::Float64, dx::Float64)
    return 0.5 * u_sq_sum * dx
end

end # module
