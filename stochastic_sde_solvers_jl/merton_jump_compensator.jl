module MertonJump
export jump_drift_compensator

function jump_drift_compensator(lam::Float64, k_mean::Float64)
    return lam * k_mean
end

end # module
