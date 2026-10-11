module SphericalHarmStep10009
export compute_spherical_harm_10009
function compute_spherical_harm_10009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10009,Test
@testset "SphericalHarmStep10009" begin
    @test isfinite(compute_spherical_harm_10009(0.5))
end
