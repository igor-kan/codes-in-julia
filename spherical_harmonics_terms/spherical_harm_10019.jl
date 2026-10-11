module SphericalHarmStep10019
export compute_spherical_harm_10019
function compute_spherical_harm_10019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10019,Test
@testset "SphericalHarmStep10019" begin
    @test isfinite(compute_spherical_harm_10019(0.5))
end
