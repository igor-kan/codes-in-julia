module SphericalHarmStep8009
export compute_spherical_harm_8009
function compute_spherical_harm_8009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8009,Test
@testset "SphericalHarmStep8009" begin
    @test isfinite(compute_spherical_harm_8009(0.5))
end
