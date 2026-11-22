using Test
@testset "gauss_newton_nlls_d57_unit" begin
    @test validate_nonempty_GnD57([1.0]) == 1
    ts = [0.0, 1.0, 2.0, 3.0]
    ys = @. 2.5 * exp(-0.4 * ts)
    a, b = fit_exp_gn(ts, ys, 2.0, -0.2)
    @test verify_close_GnD57(a, 2.5, 1e-6) <= 1e-6
    @test verify_close_GnD57(b, -0.4, 1e-6) <= 1e-6
end
