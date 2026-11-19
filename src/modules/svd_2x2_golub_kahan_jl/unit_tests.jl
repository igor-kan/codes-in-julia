using Test
@testset "svd_2x2_golub_kahan_jl_unit" begin
    @test validate_nonempty_Svd2Res([1.0]) == 1
    r = svd_values_2x2([3.0 0.0; 0.0 -4.0]); verify_close_Svd2Res(r.s1, 4.0, 1e-12); verify_close_Svd2Res(r.s2, 3.0, 1e-12)
end
