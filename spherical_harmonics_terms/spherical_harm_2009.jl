module SphericalHarmStep2009
export compute_spherical_harm_2009
function compute_spherical_harm_2009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2009,Test
@testset "SphericalHarmStep2009" begin
    @test isfinite(compute_spherical_harm_2009(0.5))
end
