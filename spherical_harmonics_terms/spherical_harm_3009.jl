module SphericalHarmStep3009
export compute_spherical_harm_3009
function compute_spherical_harm_3009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3009,Test
@testset "SphericalHarmStep3009" begin
    @test isfinite(compute_spherical_harm_3009(0.5))
end
