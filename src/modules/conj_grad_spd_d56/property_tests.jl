using Test
@testset "conj_grad_spd_d56_props" begin
    @test sum(parallel_norms_CgD56([[1.0, 2.0], [3.0]])) == 14.0
    A = [5.0 0.0 1.0; 0.0 4.0 0.0; 1.0 0.0 5.0]
    b = [6.0, 8.0, 6.0]
    x = conjugate_gradient(A, b)
    @test verify_close_CgD56(x[2], 2.0, 1e-9) <= 1e-9
end
