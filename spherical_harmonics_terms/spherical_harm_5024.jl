module SphericalHarmStep5024
export compute_spherical_harm_5024
function compute_spherical_harm_5024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5024,Test
@testset "SphericalHarmStep5024" begin
    @test isfinite(compute_spherical_harm_5024(0.5))
end
