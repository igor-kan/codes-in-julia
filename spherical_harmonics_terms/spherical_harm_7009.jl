module SphericalHarmStep7009
export compute_spherical_harm_7009
function compute_spherical_harm_7009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep7009,Test
@testset "SphericalHarmStep7009" begin
    @test isfinite(compute_spherical_harm_7009(0.5))
end
