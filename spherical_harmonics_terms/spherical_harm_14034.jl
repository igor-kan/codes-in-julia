module SphericalHarmStep14034
export compute_spherical_harm_14034
function compute_spherical_harm_14034(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14034,Test
@testset "SphericalHarmStep14034" begin
    @test isfinite(compute_spherical_harm_14034(0.5))
end
