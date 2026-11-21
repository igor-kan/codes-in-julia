using Test
@testset "fft_cooley_tukey_d56_props" begin
    @test sum(parallel_norms_FftD56([[1.0, 2.0], [3.0]])) == 14.0
    sig = [1.0, 2.0, -1.0, 3.0, 0.5, -2.0, 4.0, 1.5]
    sp = fft_rad2(sig)
    e_time = sum(abs2, sig)
    e_freq = sum(abs2, sp) / length(sig)
    @test verify_close_FftD56(e_freq, e_time, 1e-9) <= 1e-9
end
