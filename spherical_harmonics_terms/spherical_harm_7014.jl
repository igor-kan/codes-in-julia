module SphericalHarmStep7014
export compute_spherical_harm_7014
function compute_spherical_harm_7014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep7014,Test
@testset "SphericalHarmStep7014" begin
    @test isfinite(compute_spherical_harm_7014(0.5))
end
