module SphericalHarmStep5019
export compute_spherical_harm_5019
function compute_spherical_harm_5019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5019,Test
@testset "SphericalHarmStep5019" begin
    @test isfinite(compute_spherical_harm_5019(0.5))
end
