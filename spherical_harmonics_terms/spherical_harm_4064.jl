module SphericalHarmStep4064
export compute_spherical_harm_4064
function compute_spherical_harm_4064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4064,Test
@testset "SphericalHarmStep4064" begin
    @test isfinite(compute_spherical_harm_4064(0.5))
end
