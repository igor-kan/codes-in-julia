using Test
@testset "newton_divided_diff_jl" begin
    xs = [0.0, 1.0, 2.0, 3.0]
    ys = [1.0, 3.0, 9.0, 25.0] # 1 + x - x^2 + x^3
    p = fit_newton(NewtonMethod(), xs, ys)
    verify_interpolates_knots(p, ys)
    @test abs(eval_newton(p, 4.0) - (1 + 4 - 16 + 64)) < 1e-10
end
