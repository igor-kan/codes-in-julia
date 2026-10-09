module SphericalHarmStep8084
export compute_spherical_harm_8084
function compute_spherical_harm_8084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8084,Test
@testset "SphericalHarmStep8084" begin
    @test isfinite(compute_spherical_harm_8084(0.5))
end
