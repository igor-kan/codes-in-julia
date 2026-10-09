module SphericalHarmStep8044
export compute_spherical_harm_8044
function compute_spherical_harm_8044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8044,Test
@testset "SphericalHarmStep8044" begin
    @test isfinite(compute_spherical_harm_8044(0.5))
end
