using Test
@testset "lomb_scargle_periodogram_jl_d61_unit" begin
    @test validate_nonempty_Lomb([1.0]) == 1
    times = collect(0.0:0.01:(2.0 * pi))
    sine = sin.(times)
    flat = fill(0.7, length(times))
    verify_close_Lomb(lomb_scargle_power(times, flat, 1.0), 0.0, 1e-12)
    strong = lomb_scargle_power(times, sine, 1.0)
    weak = lomb_scargle_power(times, sine, 2.0)
    @test strong > 0.5
    @test strong > weak
    best = lomb_scargle_best(times, sine, [0.5, 1.0, 2.0])
    verify_close_Lomb(best.omega, 1.0, 1e-9)
end
