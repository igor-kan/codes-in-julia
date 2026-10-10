module SphericalHarmStep9074
export compute_spherical_harm_9074
function compute_spherical_harm_9074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9074,Test
@testset "SphericalHarmStep9074" begin
    @test isfinite(compute_spherical_harm_9074(0.5))
end
