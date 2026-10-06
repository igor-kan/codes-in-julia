module SphericalHarmStep3034
export compute_spherical_harm_3034
function compute_spherical_harm_3034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3034,Test
@testset "SphericalHarmStep3034" begin
    @test isfinite(compute_spherical_harm_3034(0.5))
end
