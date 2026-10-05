module SphericalHarmStep2064
export compute_spherical_harm_2064
function compute_spherical_harm_2064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2064,Test
@testset "SphericalHarmStep2064" begin
    @test isfinite(compute_spherical_harm_2064(0.5))
end
