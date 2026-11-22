using Test
@testset "power_method_sym_d57_unit" begin
    @test validate_nonempty_PowSymD57([1.0]) == 1
    A = [5.0 1.0; 1.0 3.0]
    l1, l2 = top2_sym_eigs(A)
    @test verify_close_PowSymD57(l1 + l2, 8.0, 1e-6) <= 1e-6
end
