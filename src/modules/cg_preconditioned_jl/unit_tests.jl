using Test, LinearAlgebra

@testset "Preconditioned CG SPD" begin
    n = 8
    A = Matrix(Tridiagonal(fill(-1.0, n - 1), fill(4.0, n), fill(-1.0, n - 1)))
    x_true = collect(1.0:n)
    b = A * x_true
    sol = solve_pcg(JacobiCgSolver(true), A, b, CgConfig(1e-11, 200))
    @test verify_pcg_solution(A, b, sol, 1e-10)
    @test isapprox(sol.x, x_true; atol = 1e-9)
end
