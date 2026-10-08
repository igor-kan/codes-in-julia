module SphericalHarmStep5084
export compute_spherical_harm_5084
function compute_spherical_harm_5084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5084,Test
@testset "SphericalHarmStep5084" begin
    @test isfinite(compute_spherical_harm_5084(0.5))
end
