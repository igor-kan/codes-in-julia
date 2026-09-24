module GeometricBM
export gbm_expected_val

function gbm_expected_val(s0::Float64, mu::Float64, t::Float64)
    return s0 * exp(mu * t)
end

end # module
