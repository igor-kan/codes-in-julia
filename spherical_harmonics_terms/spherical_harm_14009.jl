module SphericalHarmStep14009
export compute_spherical_harm_14009
function compute_spherical_harm_14009(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14009,Test
@testset "SphericalHarmStep14009" begin
    @test isfinite(compute_spherical_harm_14009(0.5))
end
