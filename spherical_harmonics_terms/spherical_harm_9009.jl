module SphericalHarmStep9009
export compute_spherical_harm_9009
function compute_spherical_harm_9009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9009,Test
@testset "SphericalHarmStep9009" begin
    @test isfinite(compute_spherical_harm_9009(0.5))
end
