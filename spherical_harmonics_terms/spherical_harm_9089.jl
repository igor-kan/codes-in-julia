module SphericalHarmStep9089
export compute_spherical_harm_9089
function compute_spherical_harm_9089(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9089,Test
@testset "SphericalHarmStep9089" begin
    @test isfinite(compute_spherical_harm_9089(0.5))
end
