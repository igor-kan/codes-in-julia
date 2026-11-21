using Test
@testset "chebyshev_nodes_eval_d56_unit" begin
    @test validate_nonempty_ChebD56([1.0]) == 1
    v = clenshaw_cheb_eval([1.0, 2.0, 3.0], 0.5)
    expected = 1.0 + 2.0*0.5 + 3.0*(2.0*0.25 - 1.0)
    @test verify_close_ChebD56(v, expected, 1e-12) <= 1e-12
end
