using Test
@testset "svd_2x2_golub_kahan_jl_props" begin
    @test sum(parallel_norms_Svd2Res([[1.0, 2.0], [3.0]])) == 14.0
    A = [1.0 2.0; 3.0 4.0]; r = svd_values_2x2(A); verify_close_Svd2Res(r.s1^2 + r.s2^2, sum(abs2, A), 1e-12)
end
