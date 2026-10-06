module SphericalHarmStep3069
export compute_spherical_harm_3069
function compute_spherical_harm_3069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3069,Test
@testset "SphericalHarmStep3069" begin
    @test isfinite(compute_spherical_harm_3069(0.5))
end
