using Test
@testset "rk4_adaptive_step_jl_props" begin
    @test sum(parallel_norms_Rk4Res([[1.0, 2.0], [3.0]])) == 14.0
    r = integrate_rk4_sys((t, y) -> y, 0.0, [1.0], 0.05, 20); verify_close_Rk4Res(r.y[1], exp(1.0), 1e-6)
end
