using Test
@testset "conj_grad_spd_d56_unit" begin
    @test validate_nonempty_CgD56([1.0]) == 1
    A = [4.0 1.0; 1.0 3.0]
    b = [1.0, 2.0]
    x = conjugate_gradient(A, b)
    @test verify_close_CgD56(sum((A * x .- b).^2), 0.0, 1e-14) <= 1e-14
end
