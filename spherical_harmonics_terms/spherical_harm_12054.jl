module SphericalHarmStep12054
export compute_spherical_harm_12054
function compute_spherical_harm_12054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12054,Test
@testset "SphericalHarmStep12054" begin
    @test isfinite(compute_spherical_harm_12054(0.5))
end
