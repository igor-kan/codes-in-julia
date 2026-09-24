module GarchModel
export uncond_variance

function uncond_variance(omega::Float64, alpha::Float64, beta::Float64)
    return omega / (1.0 - alpha - beta)
end

end # module
