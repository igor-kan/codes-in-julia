module SphericalHarmStep5069
export compute_spherical_harm_5069
function compute_spherical_harm_5069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5069,Test
@testset "SphericalHarmStep5069" begin
    @test isfinite(compute_spherical_harm_5069(0.5))
end
