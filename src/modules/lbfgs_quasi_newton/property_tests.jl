using Test, Random

@testset "L-BFGS Quadratic Forms" begin
    rng = MersenneTwister(2026)
    for trial in 1:6
        d = 6 + trial
        weights = Float64.(1:d)
        target = randn(rng, d)
        quad_fg!(g, x) = begin
            @. g = weights * (x - target)
            return 0.5 * sum(@. weights * (x - target)^2)
        end
        res = minimize_smooth(LbfgsSolver(6), quad_fg!, zeros(d), LbfgsConfig(tol = 1e-9))
        @test res.converged && isapprox(res.minimizer, target; atol = 1e-7)
    end
end
