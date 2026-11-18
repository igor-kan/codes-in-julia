using Test
@testset "clenshaw_chebyshev_sum_jl_props" begin
    @test sum(parallel_norms_Clenshaw([[1.0, 2.0], [3.0]])) == 14.0
    verify_close_Clenshaw(eval_clenshaw([1.0, 0.0, 0.0, 1.0], 0.5), 1.0 + (4.0*0.5^3 - 3.0*0.5), 1e-14)
end
