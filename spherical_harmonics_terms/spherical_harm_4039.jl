module SphericalHarmStep4039
export compute_spherical_harm_4039
function compute_spherical_harm_4039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4039,Test
@testset "SphericalHarmStep4039" begin
    @test isfinite(compute_spherical_harm_4039(0.5))
end
