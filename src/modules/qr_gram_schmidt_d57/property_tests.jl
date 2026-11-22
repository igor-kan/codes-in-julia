using Test
@testset "qr_gram_schmidt_d57_props" begin
    @test sum(parallel_norms_MgsD57([[1.0, 2.0], [3.0]])) == 14.0
    B = [3.0 1.0; 4.0 2.0]
    Q, R = mgs_qr(B)
    @test verify_close_MgsD57(R[2, 1], 0.0, 1e-14) <= 1e-14
end
