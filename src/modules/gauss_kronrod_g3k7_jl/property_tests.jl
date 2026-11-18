using Test
@testset "gauss_kronrod_g3k7_jl_props" begin
    @test sum(parallel_norms_Gk37([[1.0, 2.0], [3.0]])) == 14.0
    q = integrate_g3k7(x -> cos(x), 0.0, 1.0)
    verify_close_Gk37(q.k7, sin(1.0), 1e-9)
end
