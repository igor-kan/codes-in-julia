module SphericalHarmStep5009
export compute_spherical_harm_5009
function compute_spherical_harm_5009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5009,Test
@testset "SphericalHarmStep5009" begin
    @test isfinite(compute_spherical_harm_5009(0.5))
end
