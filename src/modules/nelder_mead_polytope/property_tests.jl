using Test

@testset "Multistart Convex Paraboloid" begin
    bowl(x) = sum((x .- collect(1.0:length(x))).^2)
    best = multistart_nelder_mead(bowl, [[0.0, 0.0, 0.0], [5.0, -3.0, 2.0]], NmOptions(tol = 1e-8))
    @test isapprox(best.x, [1.0, 2.0, 3.0]; atol = 1e-5)
end
