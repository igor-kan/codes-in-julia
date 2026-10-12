module SphericalHarmStep12019
export compute_spherical_harm_12019
function compute_spherical_harm_12019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12019,Test
@testset "SphericalHarmStep12019" begin
    @test isfinite(compute_spherical_harm_12019(0.5))
end
