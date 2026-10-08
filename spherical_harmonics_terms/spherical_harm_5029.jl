module SphericalHarmStep5029
export compute_spherical_harm_5029
function compute_spherical_harm_5029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5029,Test
@testset "SphericalHarmStep5029" begin
    @test isfinite(compute_spherical_harm_5029(0.5))
end
