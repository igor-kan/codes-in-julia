module SphericalHarmStep4009
export compute_spherical_harm_4009
function compute_spherical_harm_4009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4009,Test
@testset "SphericalHarmStep4009" begin
    @test isfinite(compute_spherical_harm_4009(0.5))
end
