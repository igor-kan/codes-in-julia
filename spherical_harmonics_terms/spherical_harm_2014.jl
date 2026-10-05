module SphericalHarmStep2014
export compute_spherical_harm_2014
function compute_spherical_harm_2014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2014,Test
@testset "SphericalHarmStep2014" begin
    @test isfinite(compute_spherical_harm_2014(0.5))
end
