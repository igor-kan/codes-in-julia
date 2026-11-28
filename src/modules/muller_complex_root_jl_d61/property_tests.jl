using Test
@testset "muller_complex_root_jl_d61_props" begin
    @test sum(parallel_norms_Muller([[1.0, 2.0], [3.0]])) == 14.0
    res = muller_root([-1.0, 0.0, 0.0, 1.0], 0.9 + 0.2im)
    @test abs(res.root^3 - 1.0) < 1e-6
    @test res.iters <= 100
end
