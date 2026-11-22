using Test
@testset "gauss_newton_nlls_d57_props" begin
    @test sum(parallel_norms_GnD57([[1.0, 2.0], [3.0]])) == 14.0
    ts = [0.0, 0.5, 1.0, 1.5]
    ys = @. 1.8 * exp(0.25 * ts)
    a, b = fit_exp_gn(ts, ys, 1.5, 0.1)
    @test verify_close_GnD57(b, 0.25, 1e-5) <= 1e-5
end
