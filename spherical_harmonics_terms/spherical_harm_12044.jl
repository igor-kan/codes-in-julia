module SphericalHarmStep12044
export compute_spherical_harm_12044
function compute_spherical_harm_12044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12044,Test
@testset "SphericalHarmStep12044" begin
    @test isfinite(compute_spherical_harm_12044(0.5))
end
