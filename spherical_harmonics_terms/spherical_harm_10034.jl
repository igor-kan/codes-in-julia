module SphericalHarmStep10034
export compute_spherical_harm_10034
function compute_spherical_harm_10034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10034,Test
@testset "SphericalHarmStep10034" begin
    @test isfinite(compute_spherical_harm_10034(0.5))
end
