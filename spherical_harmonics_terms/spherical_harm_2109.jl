module SphericalHarmStep2109
export compute_spherical_harm_2109
function compute_spherical_harm_2109(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2109,Test
@testset "SphericalHarmStep2109" begin
    @test isfinite(compute_spherical_harm_2109(0.5))
end
