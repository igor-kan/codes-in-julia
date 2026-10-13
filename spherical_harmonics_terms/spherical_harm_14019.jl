module SphericalHarmStep14019
export compute_spherical_harm_14019
function compute_spherical_harm_14019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14019,Test
@testset "SphericalHarmStep14019" begin
    @test isfinite(compute_spherical_harm_14019(0.5))
end
