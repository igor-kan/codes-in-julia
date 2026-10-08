module SphericalHarmStep7019
export compute_spherical_harm_7019
function compute_spherical_harm_7019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep7019,Test
@testset "SphericalHarmStep7019" begin
    @test isfinite(compute_spherical_harm_7019(0.5))
end
