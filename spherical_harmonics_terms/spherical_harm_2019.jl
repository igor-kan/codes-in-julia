module SphericalHarmStep2019
export compute_spherical_harm_2019
function compute_spherical_harm_2019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2019,Test
@testset "SphericalHarmStep2019" begin
    @test isfinite(compute_spherical_harm_2019(0.5))
end
