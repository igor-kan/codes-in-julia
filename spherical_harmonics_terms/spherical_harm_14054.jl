module SphericalHarmStep14054
export compute_spherical_harm_14054
function compute_spherical_harm_14054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14054,Test
@testset "SphericalHarmStep14054" begin
    @test isfinite(compute_spherical_harm_14054(0.5))
end
