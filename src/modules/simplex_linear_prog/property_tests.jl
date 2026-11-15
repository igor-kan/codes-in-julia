using Test, Random

@testset "Positive Random Resource Allocation LPs" begin
    rng = MersenneTwister(123)
    for _ in 1:8
        A = Float64.(rand(rng, 1:5, 4, 4))
        b = Float64.(rand(rng, 10:40, 4))
        c = Float64.(rand(rng, 1:10, 4))
        lp = StandardLp(A, b, c)
        sol = maximize_lp(BlandSimplexSolver(2000), lp)
        @test verify_lp_solution(lp, sol)
    end
end
