module SphericalHarmStep4054
export compute_spherical_harm_4054
function compute_spherical_harm_4054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4054,Test
@testset "SphericalHarmStep4054" begin
    @test isfinite(compute_spherical_harm_4054(0.5))
end
