using Test
@testset "adams_moulton_pc4_jl_props" begin
    @test sum(parallel_norms_Abm4([[1.0, 2.0], [3.0]])) == 14.0
    yf = solve_abm4((t, y) -> 2.0 * t, OdeGrid(0.0, 0.1, 10), 0.0)
    verify_close_Abm4(yf, 1.0, 1e-12)
end
