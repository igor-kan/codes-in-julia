module SphericalHarmStep12034
export compute_spherical_harm_12034
function compute_spherical_harm_12034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12034,Test
@testset "SphericalHarmStep12034" begin
    @test isfinite(compute_spherical_harm_12034(0.5))
end
