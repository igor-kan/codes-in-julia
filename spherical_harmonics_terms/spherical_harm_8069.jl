module SphericalHarmStep8069
export compute_spherical_harm_8069
function compute_spherical_harm_8069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8069,Test
@testset "SphericalHarmStep8069" begin
    @test isfinite(compute_spherical_harm_8069(0.5))
end
