using Test
@testset "spline_natural_cubic_d57_unit" begin
    @test validate_nonempty_SplD57([1.0]) == 1
    @test verify_close_SplD57(hermite_eval(1.0, 2.0, 1.0, 1.0, 0.5), 1.5, 1e-12) <= 1e-12
    @test verify_close_SplD57(hermite_eval(0.0, 1.0, 0.0, 3.0, 0.5), 0.125, 1e-12) <= 1e-12
end
