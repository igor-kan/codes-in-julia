module SphericalHarmStep10069
export compute_spherical_harm_10069
function compute_spherical_harm_10069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10069,Test
@testset "SphericalHarmStep10069" begin
    @test isfinite(compute_spherical_harm_10069(0.5))
end
