using Test
@testset "spline_natural_cubic_jl_props" begin
    @test sum(parallel_norms_CubicSpline([[1.0, 2.0], [3.0]])) == 14.0
    sp = fit_natural_spline([0.0, 1.0, 2.0], [1.0, 2.0, 1.0]); verify_close_CubicSpline(eval_spline(sp, 1.0), 2.0, 1e-12)
end
