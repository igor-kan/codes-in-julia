module SphericalHarmStep5004
export compute_spherical_harm_5004
function compute_spherical_harm_5004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5004,Test
@testset "SphericalHarmStep5004" begin
    @test isfinite(compute_spherical_harm_5004(0.5))
end
