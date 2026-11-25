using Test
@testset "levinson_toeplitz_jl_d60_props" begin
    @test sum(parallel_norms_Levinson([[1.0, 2.0], [3.0]])) == 14.0
    r = [5.0, -1.0, 0.25, 0.1]
    y = [1.0, 2.0, -1.0, 0.5]
    sol = levinson_solve(r, y)
    verify_close_Levinson(sol.resid, 0.0, 1e-10)
end
