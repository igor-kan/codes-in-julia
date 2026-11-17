using Test
@testset "welch_parallel" begin
    m = 16
    s1 = [cos(2.0 * pi * 2 * (n - 1) / m) for n in 1:48]
    s2 = [cos(2.0 * pi * 5 * (n - 1) / m) for n in 1:48]
    res = parallel_welch_batch(WelchEstimator(WelchConfig(m, 8)), [s1, s2])
    @test fast_peak_bin(res[1]) == 3 && fast_peak_bin(res[2]) == 6
end
