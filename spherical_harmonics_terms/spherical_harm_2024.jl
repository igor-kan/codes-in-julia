module SphericalHarmStep2024
export compute_spherical_harm_2024
function compute_spherical_harm_2024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2024,Test
@testset "SphericalHarmStep2024" begin
    @test isfinite(compute_spherical_harm_2024(0.5))
end
