module SphericalHarmStep5049
export compute_spherical_harm_5049
function compute_spherical_harm_5049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5049,Test
@testset "SphericalHarmStep5049" begin
    @test isfinite(compute_spherical_harm_5049(0.5))
end
