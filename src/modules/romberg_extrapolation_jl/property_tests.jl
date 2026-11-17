using Test
@testset "romberg_additivity" begin
    s = parallel_integrate_intervals(RombergRule(8, 1e-11), x -> x^5, [(0.0, 1.0), (1.0, 2.0)])
    verify_quadrature_exact(s, 64.0 / 6.0, 1e-10)
end
