using Test
@testset "nelder_mead_simplex_d56_props" begin
    @test sum(parallel_norms_NelderD56([[1.0, 2.0], [3.0]])) == 14.0
    _, fval = nelder_mead_2d(v -> v[1]^2 + 2.0 * v[2]^2, [1.5, -1.5]; maxiter = 90)
    @test fval < 1e-5
end
