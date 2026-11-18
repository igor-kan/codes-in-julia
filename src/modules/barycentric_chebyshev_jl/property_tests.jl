using Test
@testset "barycentric_chebyshev_jl_props" begin
    @test sum(parallel_norms_BaryCheb([[1.0, 2.0], [3.0]])) == 14.0
    m = cheb_mesh(4)
    verify_close_BaryCheb(eval_bary_cheb(m, ones(5), 0.2), 1.0, 1e-14)
end
