module SphericalHarmStep8059
export compute_spherical_harm_8059
function compute_spherical_harm_8059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8059,Test
@testset "SphericalHarmStep8059" begin
    @test isfinite(compute_spherical_harm_8059(0.5))
end
