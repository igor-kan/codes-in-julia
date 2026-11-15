function rule_weight_sum()
    kronrod_sum = _GK15_WK[1] + 2.0 * sum(_GK15_WK[2:end])
    gauss_sum = _G7_WG[1] + 2.0 * sum(_G7_WG[2:end])
    return (kronrod = kronrod_sum, gauss = gauss_sum)
end
