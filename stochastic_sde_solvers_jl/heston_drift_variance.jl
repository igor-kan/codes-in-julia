module HestonVol
export variance_drift

function variance_drift(kappa::Float64, theta::Float64, v::Float64)
    return kappa * (theta - max(0.0, v))
end

end # module
