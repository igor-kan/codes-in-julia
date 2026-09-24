module KeplerOrbit
export semimajor_axis

function semimajor_axis(energy::Float64, mu::Float64)
    return -mu / (2.0 * energy)
end

end # module
