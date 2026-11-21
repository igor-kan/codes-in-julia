using Test
@testset "chebyshev_nodes_eval_d56_props" begin
    @test sum(parallel_norms_ChebD56([[1.0, 2.0], [3.0]])) == 14.0
    for x in (-0.8, 0.0, 0.7)
        t3 = 4.0*x^3 - 3.0*x
        @test verify_close_ChebD56(clenshaw_cheb_eval([0.0, 0.0, 0.0, 1.0], x), t3, 1e-12) <= 1e-12
    end
end
