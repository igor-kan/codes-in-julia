using Test
@testset "welch_spectral_psd_jl" begin
    m = 32
    x = [cos(2.0 * pi * 4 * (n - 1) / m) for n in 1:96]
    psd = welch_psd(WelchEstimator(WelchConfig(m, 16)), x)
    verify_psd_nonneg(psd)
    @test fast_peak_bin(psd) == 5 # 0-indexed bin 4 -> 1-indexed 5
end
