module SphericalHarmStep3089
export compute_spherical_harm_3089
function compute_spherical_harm_3089(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3089,Test
@testset "SphericalHarmStep3089" begin
    @test isfinite(compute_spherical_harm_3089(0.5))
end
