using Test
@testset "gram_schmidt_modified_jl_unit" begin
    @test validate_nonempty_MgsQr([1.0]) == 1
    A = [1.0 1.0; 1.0 2.0; 1.0 3.0]
    f = mgs_qr(A)
    verify_close_MgsQr(maximum(abs.(f.Q * f.R .- A)), 0.0, 1e-12)
end
