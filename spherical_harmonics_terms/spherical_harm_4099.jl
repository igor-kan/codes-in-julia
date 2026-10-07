module SphericalHarmStep4099
export compute_spherical_harm_4099
function compute_spherical_harm_4099(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4099,Test
@testset "SphericalHarmStep4099" begin
    @test isfinite(compute_spherical_harm_4099(0.5))
end
