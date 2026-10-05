module SphericalHarmStep2034
export compute_spherical_harm_2034
function compute_spherical_harm_2034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2034,Test
@testset "SphericalHarmStep2034" begin
    @test isfinite(compute_spherical_harm_2034(0.5))
end
