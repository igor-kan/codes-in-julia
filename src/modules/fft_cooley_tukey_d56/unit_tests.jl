using Test
@testset "fft_cooley_tukey_d56_unit" begin
    @test validate_nonempty_FftD56([1.0]) == 1
    sig = [1.0, 0.0, -1.0, 0.0]
    sp = fft_rad2(sig)
    @test verify_close_FftD56(abs(sp[2]), 2.0, 1e-10) <= 1e-10
    @test verify_close_FftD56(abs(sp[1]), 0.0, 1e-10) <= 1e-10
end
