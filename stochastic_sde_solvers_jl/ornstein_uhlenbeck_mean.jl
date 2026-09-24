module OrnsteinOU
export ou_stationary_variance

function ou_stationary_variance(sigma::Float64, theta::Float64)
    return sigma^2 / (2.0 * theta)
end

end # module
