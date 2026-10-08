module SphericalHarmStep5054
export compute_spherical_harm_5054
function compute_spherical_harm_5054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5054,Test
@testset "SphericalHarmStep5054" begin
    @test isfinite(compute_spherical_harm_5054(0.5))
end
