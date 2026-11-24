using Test
@testset "rk4_ode_jl_d59_props" begin
    @test sum(parallel_norms_Rk4JlD59([[1.0, 2.0], [3.0]])) == 14.0
    y1 = rk4_scalar((t, y) -> y, 1.0, 0.0, 0.02, 50)
    @test verify_close_Rk4JlD59(y1, exp(1.0), 1e-6) <= 1e-6
end
