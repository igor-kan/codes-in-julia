module SphericalHarmStep9004
export compute_spherical_harm_9004
function compute_spherical_harm_9004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9004,Test
@testset "SphericalHarmStep9004" begin
    @test isfinite(compute_spherical_harm_9004(0.5))
end
