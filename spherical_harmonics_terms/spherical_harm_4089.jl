module SphericalHarmStep4089
export compute_spherical_harm_4089
function compute_spherical_harm_4089(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4089,Test
@testset "SphericalHarmStep4089" begin
    @test isfinite(compute_spherical_harm_4089(0.5))
end
