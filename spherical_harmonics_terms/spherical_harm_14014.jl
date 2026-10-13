module SphericalHarmStep14014
export compute_spherical_harm_14014
function compute_spherical_harm_14014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14014,Test
@testset "SphericalHarmStep14014" begin
    @test isfinite(compute_spherical_harm_14014(0.5))
end
