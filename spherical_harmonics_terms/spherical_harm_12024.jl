module SphericalHarmStep12024
export compute_spherical_harm_12024
function compute_spherical_harm_12024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12024,Test
@testset "SphericalHarmStep12024" begin
    @test isfinite(compute_spherical_harm_12024(0.5))
end
