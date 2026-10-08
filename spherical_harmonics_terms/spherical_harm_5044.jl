module SphericalHarmStep5044
export compute_spherical_harm_5044
function compute_spherical_harm_5044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5044,Test
@testset "SphericalHarmStep5044" begin
    @test isfinite(compute_spherical_harm_5044(0.5))
end
