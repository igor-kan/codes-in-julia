using Test
@testset "rk4_ode_jl_d59_unit" begin
    @test validate_nonempty_Rk4JlD59([1.0]) == 1
    got = rk4_scalar((t, y) -> -y, 1.0, 0.0, 0.05, 20)
    @test verify_close_Rk4JlD59(got, exp(-1.0), 1e-6) <= 1e-6
end
