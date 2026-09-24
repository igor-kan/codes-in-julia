module CoherentState
export coherent_displacement

function coherent_displacement(alpha::Float64, x::Float64)
    return exp(-0.5 * (x - sqrt(2.0)*alpha)^2)
end

end # module
