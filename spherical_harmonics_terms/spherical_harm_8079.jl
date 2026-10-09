module SphericalHarmStep8079
export compute_spherical_harm_8079
function compute_spherical_harm_8079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8079,Test
@testset "SphericalHarmStep8079" begin
    @test isfinite(compute_spherical_harm_8079(0.5))
end
