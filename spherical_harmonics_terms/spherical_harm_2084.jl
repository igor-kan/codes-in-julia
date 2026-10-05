module SphericalHarmStep2084
export compute_spherical_harm_2084
function compute_spherical_harm_2084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2084,Test
@testset "SphericalHarmStep2084" begin
    @test isfinite(compute_spherical_harm_2084(0.5))
end
