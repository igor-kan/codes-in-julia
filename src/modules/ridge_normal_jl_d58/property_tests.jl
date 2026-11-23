using Test
@testset "ridge_normal_jl_d58_props" begin
    @test sum(parallel_norms_RidgeD58([[1.0, 2.0], [3.0]])) == 14.0
    X = [1.0 2.0; 2.0 1.0; 3.0 4.0]
    y = [5.0, 4.0, 11.0]
    b_lo = fit_ridge(X, y, 0.1)
    b_hi = fit_ridge(X, y, 50.0)
    @test sum(abs2, b_hi) < sum(abs2, b_lo)
end
