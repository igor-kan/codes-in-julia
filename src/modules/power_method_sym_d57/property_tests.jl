using Test
@testset "power_method_sym_d57_props" begin
    @test sum(parallel_norms_PowSymD57([[1.0, 2.0], [3.0]])) == 14.0
    D = [7.0 0.0; 0.0 2.0]
    l1, l2 = top2_sym_eigs(D)
    @test verify_close_PowSymD57(l1 * l2, 14.0, 1e-6) <= 1e-6
end
