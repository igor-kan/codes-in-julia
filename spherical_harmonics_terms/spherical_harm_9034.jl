module SphericalHarmStep9034
export compute_spherical_harm_9034
function compute_spherical_harm_9034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9034,Test
@testset "SphericalHarmStep9034" begin
    @test isfinite(compute_spherical_harm_9034(0.5))
end
