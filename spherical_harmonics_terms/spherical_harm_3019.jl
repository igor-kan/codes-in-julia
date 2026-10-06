module SphericalHarmStep3019
export compute_spherical_harm_3019
function compute_spherical_harm_3019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3019,Test
@testset "SphericalHarmStep3019" begin
    @test isfinite(compute_spherical_harm_3019(0.5))
end
