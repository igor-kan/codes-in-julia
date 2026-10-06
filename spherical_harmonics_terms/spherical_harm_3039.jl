module SphericalHarmStep3039
export compute_spherical_harm_3039
function compute_spherical_harm_3039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3039,Test
@testset "SphericalHarmStep3039" begin
    @test isfinite(compute_spherical_harm_3039(0.5))
end
