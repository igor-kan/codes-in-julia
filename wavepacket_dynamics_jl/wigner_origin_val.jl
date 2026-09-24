module WignerDist
export wigner_at_origin

function wigner_at_origin(psi0::Float64)
    return (1.0 / pi) * psi0^2
end

end # module
