module SphericalHarmStep4044
export compute_spherical_harm_4044
function compute_spherical_harm_4044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4044,Test
@testset "SphericalHarmStep4044" begin
    @test isfinite(compute_spherical_harm_4044(0.5))
end
