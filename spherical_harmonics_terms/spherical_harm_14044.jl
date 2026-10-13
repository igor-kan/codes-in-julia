module SphericalHarmStep14044
export compute_spherical_harm_14044
function compute_spherical_harm_14044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14044,Test
@testset "SphericalHarmStep14044" begin
    @test isfinite(compute_spherical_harm_14044(0.5))
end
