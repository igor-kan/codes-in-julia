using Test
@testset "spline_natural_cubic_d57_props" begin
    @test sum(parallel_norms_SplD57([[1.0, 2.0], [3.0]])) == 14.0
    for t in (0.0, 0.25, 0.5, 0.75, 1.0)
        @test verify_close_SplD57(hermite_eval(0.0, 1.0, 0.0, 3.0, t), t^3, 1e-12) <= 1e-12
    end
end
