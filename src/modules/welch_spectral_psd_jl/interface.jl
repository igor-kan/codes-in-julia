abstract type SpectralEstimator end
struct WelchEstimator <: SpectralEstimator
    cfg::WelchConfig
end
estimator_name(::WelchEstimator) = "WelchHannPSD"
segment_length(e::WelchEstimator) = e.cfg.seg_len
