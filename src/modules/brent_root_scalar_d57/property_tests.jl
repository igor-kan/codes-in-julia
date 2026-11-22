using Test
@testset "brent_root_scalar_d57_props" begin
    @test sum(parallel_norms_SecD57([[1.0, 2.0], [3.0]])) == 14.0
    r = hybrid_root(x -> cos(x) - x, 0.0, 1.0)
    @test verify_close_SecD57(cos(r), r, 1e-10) <= 1e-10
end
