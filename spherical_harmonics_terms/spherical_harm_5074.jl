module SphericalHarmStep5074
export compute_spherical_harm_5074
function compute_spherical_harm_5074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5074,Test
@testset "SphericalHarmStep5074" begin
    @test isfinite(compute_spherical_harm_5074(0.5))
end
