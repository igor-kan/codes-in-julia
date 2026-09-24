module InfiniteWell
export well_energy

function well_energy(n::Int, L::Float64)
    return (n^2 * pi^2) / (2.0 * L^2)
end

end # module
