module SphericalHarmStep4074
export compute_spherical_harm_4074
function compute_spherical_harm_4074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4074,Test
@testset "SphericalHarmStep4074" begin
    @test isfinite(compute_spherical_harm_4074(0.5))
end
