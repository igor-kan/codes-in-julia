module SphericalHarmStep2079
export compute_spherical_harm_2079
function compute_spherical_harm_2079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2079,Test
@testset "SphericalHarmStep2079" begin
    @test isfinite(compute_spherical_harm_2079(0.5))
end
