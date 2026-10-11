module SphericalHarmStep10044
export compute_spherical_harm_10044
function compute_spherical_harm_10044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10044,Test
@testset "SphericalHarmStep10044" begin
    @test isfinite(compute_spherical_harm_10044(0.5))
end
