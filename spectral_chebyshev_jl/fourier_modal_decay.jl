module FourierDecay
export fourier_analytic_decay

function fourier_analytic_decay(k::Float64, alpha::Float64)
    return exp(-alpha * abs(k))
end

end # module
