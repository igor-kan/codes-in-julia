module SphericalHarmStep8034
export compute_spherical_harm_8034
function compute_spherical_harm_8034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8034,Test
@testset "SphericalHarmStep8034" begin
    @test isfinite(compute_spherical_harm_8034(0.5))
end
