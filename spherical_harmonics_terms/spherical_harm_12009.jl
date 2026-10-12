module SphericalHarmStep12009
export compute_spherical_harm_12009
function compute_spherical_harm_12009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12009,Test
@testset "SphericalHarmStep12009" begin
    @test isfinite(compute_spherical_harm_12009(0.5))
end
