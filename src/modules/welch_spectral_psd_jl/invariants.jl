function verify_psd_nonneg(psd::Vector{Float64})
    if !all(v -> isfinite(v) && v >= 0.0, psd)
        error("negative or non-finite PSD bin")
    end
    return true
end
