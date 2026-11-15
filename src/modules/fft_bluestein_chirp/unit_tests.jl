using Test

@testset "Bluestein Prime Lengths" begin
    for p in (7, 13, 17, 29)
        x = ComplexF64[cos(0.3 * k) + im * sin(0.7 * k) for k in 1:p]
        plan = build_bluestein_plan(p)
        X = execute_bluestein(plan, x)
        @test verify_parseval(x, X)
        @test isapprox(X, naive_dft_reference(x); atol = 1e-10)
    end
end
