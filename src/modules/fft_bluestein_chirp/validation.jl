function validate_dft_length(n::Int)
    n >= 1 || throw(BluesteinDimensionError("DFT size n must be positive"))
    n <= (1 << 24) || throw(BluesteinDomainError("DFT size exceeds 16M bound"))
    return true
end
