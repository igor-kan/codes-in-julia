module SphericalHarmStep2004
export compute_spherical_harm_2004
function compute_spherical_harm_2004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2004,Test
@testset "SphericalHarmStep2004" begin
    @test isfinite(compute_spherical_harm_2004(0.5))
end
