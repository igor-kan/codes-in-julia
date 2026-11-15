using Test

function rosenbrock_fg!(g, x)
    g[1] = -2.0 * (1.0 - x[1]) - 400.0 * x[1] * (x[2] - x[1]^2)
    g[2] = 200.0 * (x[2] - x[1]^2)
    return (1.0 - x[1])^2 + 100.0 * (x[2] - x[1]^2)^2
end

@testset "L-BFGS Rosenbrock" begin
    cfg = LbfgsConfig(history = 8, max_iter = 400, tol = 1e-8)
    res = minimize_smooth(LbfgsSolver(8), rosenbrock_fg!, [-1.2, 1.0], cfg)
    @test verify_lbfgs_convergence(res, 24.2, 1e-8)
    @test isapprox(res.minimizer, [1.0, 1.0]; atol = 1e-6)
end
