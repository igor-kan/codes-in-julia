using Test
@testset "spline_natural_cubic_jl_unit" begin
    @test validate_nonempty_CubicSpline([1.0]) == 1
    sp = fit_natural_spline([0.0, 1.0, 2.0, 3.0], [0.0, 2.0, 4.0, 6.0]); verify_close_CubicSpline(eval_spline(sp, 1.7), 3.4, 1e-12)
end
