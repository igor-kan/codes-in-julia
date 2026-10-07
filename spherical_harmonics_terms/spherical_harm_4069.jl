module SphericalHarmStep4069
export compute_spherical_harm_4069
function compute_spherical_harm_4069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4069,Test
@testset "SphericalHarmStep4069" begin
    @test isfinite(compute_spherical_harm_4069(0.5))
end
