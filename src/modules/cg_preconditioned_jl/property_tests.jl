using Test, Random, LinearAlgebra

@testset "Random Diagonally Dominant SPD" begin
    rng = MersenneTwister(19)
    for _ in 1:8
        M = randn(rng, 10, 10)
        A = transpose(M) * M + 2.0 * I
        x_true = randn(rng, 10)
        sol = solve_pcg(JacobiCgSolver(true), Matrix(A), A * x_true, CgConfig(1e-10, 500))
        @test sol.converged && isapprox(sol.x, x_true; atol = 1e-7)
    end
end
