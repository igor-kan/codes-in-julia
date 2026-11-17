using Test
@testset "newton_parallel" begin
    p = fit_newton(NewtonMethod(), [-1.0, 0.0, 1.0], [2.0, 1.0, 2.0])
    vals = parallel_eval_points(p, [-2.0, 0.5, 2.0])
    @test abs(vals[1] - 5.0) < 1e-10 && abs(vals[2] - 1.25) < 1e-10
end
