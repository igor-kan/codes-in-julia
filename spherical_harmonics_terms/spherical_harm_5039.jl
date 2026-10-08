module SphericalHarmStep5039
export compute_spherical_harm_5039
function compute_spherical_harm_5039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5039,Test
@testset "SphericalHarmStep5039" begin
    @test isfinite(compute_spherical_harm_5039(0.5))
end
