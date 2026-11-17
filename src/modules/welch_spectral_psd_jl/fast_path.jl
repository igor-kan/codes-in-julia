function fast_peak_bin(psd::Vector{Float64})
    best_i = 1
    for i in eachindex(psd)
        if psd[i] > psd[best_i]; best_i = i; end
    end
    return best_i
end
