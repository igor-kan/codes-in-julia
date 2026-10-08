module SphericalHarmStep5064
export compute_spherical_harm_5064
function compute_spherical_harm_5064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5064,Test
@testset "SphericalHarmStep5064" begin
    @test isfinite(compute_spherical_harm_5064(0.5))
end
