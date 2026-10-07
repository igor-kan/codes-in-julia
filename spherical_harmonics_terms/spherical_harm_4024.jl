module SphericalHarmStep4024
export compute_spherical_harm_4024
function compute_spherical_harm_4024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4024,Test
@testset "SphericalHarmStep4024" begin
    @test isfinite(compute_spherical_harm_4024(0.5))
end
