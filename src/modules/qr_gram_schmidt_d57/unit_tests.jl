using Test
@testset "qr_gram_schmidt_d57_unit" begin
    @test validate_nonempty_MgsD57([1.0]) == 1
    A = [1.0 1.0; 1.0 0.0; 0.0 1.0]
    Q, R = mgs_qr(A)
    err_rec = sum(abs2, Q * R .- A)
    err_ort = sum(abs2, Q' * Q .- [1.0 0.0; 0.0 1.0])
    @test verify_close_MgsD57(err_rec, 0.0, 1e-12) <= 1e-12
    @test verify_close_MgsD57(err_ort, 0.0, 1e-12) <= 1e-12
end
