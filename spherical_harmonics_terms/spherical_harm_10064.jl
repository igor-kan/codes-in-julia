module SphericalHarmStep10064
export compute_spherical_harm_10064
function compute_spherical_harm_10064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10064,Test
@testset "SphericalHarmStep10064" begin
    @test isfinite(compute_spherical_harm_10064(0.5))
end
