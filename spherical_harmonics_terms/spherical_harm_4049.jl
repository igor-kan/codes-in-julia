module SphericalHarmStep4049
export compute_spherical_harm_4049
function compute_spherical_harm_4049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4049,Test
@testset "SphericalHarmStep4049" begin
    @test isfinite(compute_spherical_harm_4049(0.5))
end
