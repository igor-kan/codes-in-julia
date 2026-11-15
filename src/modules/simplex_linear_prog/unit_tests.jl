using Test

@testset "Classic 2-Var LP" begin
    A = [1.0 0.0; 0.0 2.0; 3.0 2.0]
    b = [4.0, 12.0, 18.0]
    c = [3.0, 5.0]
    lp = StandardLp(A, b, c)
    sol = maximize_lp(BlandSimplexSolver(1000), lp)
    @test verify_lp_solution(lp, sol)
    @test isapprox(sol.objective, 36.0; atol = 1e-8)
end
