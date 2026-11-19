using Test
@testset "rk4_adaptive_step_jl_unit" begin
    @test validate_nonempty_Rk4Res([1.0]) == 1
    r = integrate_rk4_sys((t, y) -> [y[2], -y[1]], 0.0, [1.0, 0.0], 0.01, 100); verify_close_Rk4Res(r.y[1]^2 + r.y[2]^2, 1.0, 1e-9)
end
