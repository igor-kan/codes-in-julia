using Test
@testset "gram_schmidt_modified_jl_props" begin
    @test sum(parallel_norms_MgsQr([[1.0, 2.0], [3.0]])) == 14.0
    A = [2.0 0.0; 0.0 3.0]
    f = mgs_qr(A)
    verify_close_MgsQr(f.R[1, 1] * f.R[2, 2], 6.0, 1e-12)
end
