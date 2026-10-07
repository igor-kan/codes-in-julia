module SphericalHarmStep4019
export compute_spherical_harm_4019
function compute_spherical_harm_4019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4019,Test
@testset "SphericalHarmStep4019" begin
    @test isfinite(compute_spherical_harm_4019(0.5))
end
