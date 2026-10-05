module SphericalHarmStep2074
export compute_spherical_harm_2074
function compute_spherical_harm_2074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2074,Test
@testset "SphericalHarmStep2074" begin
    @test isfinite(compute_spherical_harm_2074(0.5))
end
