module SphericalHarmStep8064
export compute_spherical_harm_8064
function compute_spherical_harm_8064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8064,Test
@testset "SphericalHarmStep8064" begin
    @test isfinite(compute_spherical_harm_8064(0.5))
end
