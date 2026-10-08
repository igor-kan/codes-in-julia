module SphericalHarmStep5014
export compute_spherical_harm_5014
function compute_spherical_harm_5014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5014,Test
@testset "SphericalHarmStep5014" begin
    @test isfinite(compute_spherical_harm_5014(0.5))
end
