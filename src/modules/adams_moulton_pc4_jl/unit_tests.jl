using Test
@testset "adams_moulton_pc4_jl_unit" begin
    @test validate_nonempty_Abm4([1.0]) == 1
    yf = solve_abm4((t, y) -> y, OdeGrid(0.0, 0.025, 40), 1.0)
    verify_close_Abm4(yf, exp(1.0), 1e-7)
end
