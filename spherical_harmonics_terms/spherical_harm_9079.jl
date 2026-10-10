module SphericalHarmStep9079
export compute_spherical_harm_9079
function compute_spherical_harm_9079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9079,Test
@testset "SphericalHarmStep9079" begin
    @test isfinite(compute_spherical_harm_9079(0.5))
end
