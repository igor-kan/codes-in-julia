module AllenCahnPot
export double_well_potential

function double_well_potential(u::Float64)
    return 0.25 * (u^2 - 1.0)^2
end

end # module
