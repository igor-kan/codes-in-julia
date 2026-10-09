module SphericalHarmStep8014
export compute_spherical_harm_8014
function compute_spherical_harm_8014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8014,Test
@testset "SphericalHarmStep8014" begin
    @test isfinite(compute_spherical_harm_8014(0.5))
end
