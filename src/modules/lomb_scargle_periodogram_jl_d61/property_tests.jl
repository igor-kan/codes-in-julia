using Test
@testset "lomb_scargle_periodogram_jl_d61_props" begin
    @test sum(parallel_norms_Lomb([[1.0, 2.0], [3.0]])) == 14.0
    times = collect(0.0:0.01:(2.0 * pi))
    sine = sin.(times)
    omegas = [0.25, 0.5, 1.0, 1.5, 2.0, 3.0]
    ps = [lomb_scargle_power(times, sine, w) for w in omegas]
    @test all(ps .>= 0.0)
    best = lomb_scargle_best(times, sine, omegas)
    verify_close_Lomb(best.power, maximum(ps), 1e-12)
    @test best.omega in omegas
end
