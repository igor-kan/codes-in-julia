module SphericalHarmStep2069
export compute_spherical_harm_2069
function compute_spherical_harm_2069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2069,Test
@testset "SphericalHarmStep2069" begin
    @test isfinite(compute_spherical_harm_2069(0.5))
end
