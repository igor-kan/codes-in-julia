module SphericalHarmStep4079
export compute_spherical_harm_4079
function compute_spherical_harm_4079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4079,Test
@testset "SphericalHarmStep4079" begin
    @test isfinite(compute_spherical_harm_4079(0.5))
end
