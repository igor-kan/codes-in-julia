using Test
@testset "clenshaw_chebyshev_sum_jl_unit" begin
    @test validate_nonempty_Clenshaw([1.0]) == 1
    x = 0.6
    # 2*T_0 + 3*T_1 + 4*T_2 = 2 + 3x + 4(2x^2 - 1)
    verify_close_Clenshaw(eval_clenshaw([2.0, 3.0, 4.0], x), 2.0 + 3.0*x + 4.0*(2.0*x^2 - 1.0), 1e-14)
end
