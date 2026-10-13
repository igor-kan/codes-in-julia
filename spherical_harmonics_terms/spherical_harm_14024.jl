module SphericalHarmStep14024
export compute_spherical_harm_14024
function compute_spherical_harm_14024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14024,Test
@testset "SphericalHarmStep14024" begin
    @test isfinite(compute_spherical_harm_14024(0.5))
end
