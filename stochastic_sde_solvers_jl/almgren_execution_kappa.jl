module AlmgrenChriss
export almgren_kappa_sq

function almgren_kappa_sq(lam::Float64, sigma::Float64, eta::Float64)
    return (lam * sigma^2) / eta
end

end # module
