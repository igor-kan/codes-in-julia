using Test
@testset "barycentric_chebyshev_jl_unit" begin
    @test validate_nonempty_BaryCheb([1.0]) == 1
    m = cheb_mesh(8)
    vals = [x^4 - 2x^2 + 1.0 for x in m.nodes]
    verify_close_BaryCheb(eval_bary_cheb(m, vals, 0.35), 0.35^4 - 2*0.35^2 + 1.0, 1e-12)
end
