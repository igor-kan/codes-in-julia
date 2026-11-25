using Test
@testset "levinson_toeplitz_jl_d60_unit" begin
    @test validate_nonempty_Levinson([1.0]) == 1
    r = [4.0, 1.0, 0.5]
    y = [6.5, 4.5, 4.0]
    sol = levinson_solve(r, y)
    verify_close_Levinson(sol.x[1], 1.0, 1e-11)
    verify_close_Levinson(sol.resid, 0.0, 1e-11)
end
