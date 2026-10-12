module SphericalHarmStep12064
export compute_spherical_harm_12064
function compute_spherical_harm_12064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12064,Test
@testset "SphericalHarmStep12064" begin
    @test isfinite(compute_spherical_harm_12064(0.5))
end
