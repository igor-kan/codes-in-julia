using Test
@testset "svd_jacobi_2x2_d56_unit" begin
    @test validate_nonempty_JacobiD56([1.0]) == 1
    l1, l2 = jacobi_eig2x2(2.0, 1.0, 2.0)
    @test verify_close_JacobiD56(l1, 3.0, 1e-12) <= 1e-12
    @test verify_close_JacobiD56(l2, 1.0, 1e-12) <= 1e-12
end
