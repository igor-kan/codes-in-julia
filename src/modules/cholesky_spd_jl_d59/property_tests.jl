using Test
@testset "cholesky_spd_jl_d59_props" begin
    @test sum(parallel_norms_CholD59([[1.0, 2.0], [3.0]])) == 14.0
    A = [9.0 3.0 0.0; 3.0 10.0 2.0; 0.0 2.0 6.0]
    L = chol_factor(A)
    @test verify_close_CholD59(sum(abs2, L * L' .- A), 0.0, 1e-11) <= 1e-11
end
