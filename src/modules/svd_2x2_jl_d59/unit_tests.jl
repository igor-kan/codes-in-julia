using Test
@testset "svd_2x2_jl_d59_unit" begin
    @test validate_nonempty_Svd2D59([1.0]) == 1
    l1, l2 = sym2_spectrum(3.0, 1.0, 3.0)
    @test verify_close_Svd2D59(l1, 4.0, 1e-12) <= 1e-12
    @test verify_close_Svd2D59(l2, 2.0, 1e-12) <= 1e-12
end
