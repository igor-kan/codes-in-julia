module SphericalHarmStep14064
export compute_spherical_harm_14064
function compute_spherical_harm_14064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14064,Test
@testset "SphericalHarmStep14064" begin
    @test isfinite(compute_spherical_harm_14064(0.5))
end
