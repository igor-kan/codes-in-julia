using Test
@testset "svd_2x2_jl_d59_props" begin
    @test sum(parallel_norms_Svd2D59([[1.0, 2.0], [3.0]])) == 14.0
    l1, l2 = sym2_spectrum(8.0, 3.0, 4.0)
    @test verify_close_Svd2D59(l1 + l2, 12.0, 1e-12) <= 1e-12
    @test verify_close_Svd2D59(l1 * l2, 23.0, 1e-11) <= 1e-11
end
