module SphericalHarmStep5089
export compute_spherical_harm_5089
function compute_spherical_harm_5089(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5089,Test
@testset "SphericalHarmStep5089" begin
    @test isfinite(compute_spherical_harm_5089(0.5))
end
