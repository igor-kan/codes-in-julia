module SphericalHarmStep2054
export compute_spherical_harm_2054
function compute_spherical_harm_2054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2054,Test
@testset "SphericalHarmStep2054" begin
    @test isfinite(compute_spherical_harm_2054(0.5))
end
