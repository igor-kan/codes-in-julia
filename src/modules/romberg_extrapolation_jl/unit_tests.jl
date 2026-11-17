using Test
@testset "romberg_extrapolation_jl" begin
    r = integrate_romberg(RombergRule(10, 1e-12), x -> exp(x), 0.0, 1.0)
    verify_quadrature_exact(r.value, exp(1.0) - 1.0, 1e-11)
end
