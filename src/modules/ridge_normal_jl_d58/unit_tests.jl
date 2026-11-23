using Test
@testset "ridge_normal_jl_d58_unit" begin
    @test validate_nonempty_RidgeD58([1.0]) == 1
    X = [1.0 2.0; 2.0 4.0; 3.0 6.0]
    y = [3.0, 6.0, 9.0]
    b = fit_ridge(X, y, 0.01)
    @test length(b) == 2 && all(isfinite, b)
end
