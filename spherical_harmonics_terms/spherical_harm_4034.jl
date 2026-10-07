module SphericalHarmStep4034
export compute_spherical_harm_4034
function compute_spherical_harm_4034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4034,Test
@testset "SphericalHarmStep4034" begin
    @test isfinite(compute_spherical_harm_4034(0.5))
end
