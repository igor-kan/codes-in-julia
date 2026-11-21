using Test
@testset "svd_jacobi_2x2_d56_props" begin
    @test sum(parallel_norms_JacobiD56([[1.0, 2.0], [3.0]])) == 14.0
    a11, a12, a22 = 7.0, 2.5, 3.0
    l1, l2 = jacobi_eig2x2(a11, a12, a22)
    @test verify_close_JacobiD56(l1 + l2, a11 + a22, 1e-12) <= 1e-12
    @test verify_close_JacobiD56(l1 * l2, a11 * a22 - a12^2, 1e-11) <= 1e-11
end
