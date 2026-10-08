module SphericalHarmStep5034
export compute_spherical_harm_5034
function compute_spherical_harm_5034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5034,Test
@testset "SphericalHarmStep5034" begin
    @test isfinite(compute_spherical_harm_5034(0.5))
end
