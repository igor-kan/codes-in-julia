function verify_gk_weights()
    w_k = _GK15_WK[1] + 2.0 * sum(_GK15_WK[2:end])
    w_g = _G7_WG[1] + 2.0 * sum(_G7_WG[2:end])
    @assert isapprox(w_k, 2.0; atol = 1e-14)
    @assert isapprox(w_g, 2.0; atol = 1e-14)
    return true
end
