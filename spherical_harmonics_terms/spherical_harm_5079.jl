module SphericalHarmStep5079
export compute_spherical_harm_5079
function compute_spherical_harm_5079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5079,Test
@testset "SphericalHarmStep5079" begin
    @test isfinite(compute_spherical_harm_5079(0.5))
end
