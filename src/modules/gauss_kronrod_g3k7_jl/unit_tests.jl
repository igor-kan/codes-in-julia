using Test
@testset "gauss_kronrod_g3k7_jl_unit" begin
    @test validate_nonempty_Gk37([1.0]) == 1
    q = integrate_g3k7(x -> x^3 + 2x^2, 0.0, 2.0)
    verify_close_Gk37(q.k7, 4.0 + 16.0 / 3.0, 1e-13)
    verify_close_Gk37(q.err, 0.0, 1e-13)
end
