using Test

@testset "Nelder-Mead Rosenbrock" begin
    opts = NmOptions(max_iter = 1500, tol = 1e-8)
    res = nelder_mead_solve(NelderMeadSolver(0.05), rosenbrock_val, [-1.2, 1.0], opts)
    @test res.converged && verify_nm_result(rosenbrock_val, [-1.2, 1.0], res)
    @test isapprox(res.x, [1.0, 1.0]; atol = 1e-5)
end
