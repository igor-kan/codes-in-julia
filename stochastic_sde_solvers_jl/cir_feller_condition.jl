module CoxIngersoll
export cir_feller_ratio

function cir_feller_ratio(k::Float64, theta::Float64, sigma::Float64)
    return (2.0 * k * theta) / (sigma^2)
end

end # module
