module SphericalHarmStep3084
export compute_spherical_harm_3084
function compute_spherical_harm_3084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3084,Test
@testset "SphericalHarmStep3084" begin
    @test isfinite(compute_spherical_harm_3084(0.5))
end
