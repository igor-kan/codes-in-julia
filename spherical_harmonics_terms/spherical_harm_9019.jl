module SphericalHarmStep9019
export compute_spherical_harm_9019
function compute_spherical_harm_9019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9019,Test
@testset "SphericalHarmStep9019" begin
    @test isfinite(compute_spherical_harm_9019(0.5))
end
