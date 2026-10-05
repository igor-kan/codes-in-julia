module SphericalHarmStep2044
export compute_spherical_harm_2044
function compute_spherical_harm_2044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2044,Test
@testset "SphericalHarmStep2044" begin
    @test isfinite(compute_spherical_harm_2044(0.5))
end
