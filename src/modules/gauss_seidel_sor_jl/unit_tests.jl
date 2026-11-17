using Test
@testset "gauss_seidel_sor_jl" begin
    A = [4.0 -1.0 0.0; -1.0 4.0 -1.0; 0.0 -1.0 4.0]
    b = [15.0, 10.0, 10.0]
    sol = solve_sor(SorSolver(SorConfig(1.1, 1e-10, 200)), A, b)
    verify_sor_residual(A, sol, b, 1e-9)
end
