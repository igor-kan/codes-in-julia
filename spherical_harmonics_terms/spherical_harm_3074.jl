module SphericalHarmStep3074
export compute_spherical_harm_3074
function compute_spherical_harm_3074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3074,Test
@testset "SphericalHarmStep3074" begin
    @test isfinite(compute_spherical_harm_3074(0.5))
end
