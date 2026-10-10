module SphericalHarmStep9044
export compute_spherical_harm_9044
function compute_spherical_harm_9044(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9044,Test
@testset "SphericalHarmStep9044" begin
    @test isfinite(compute_spherical_harm_9044(0.5))
end
