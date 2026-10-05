module SphericalHarmStep2039
export compute_spherical_harm_2039
function compute_spherical_harm_2039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2039,Test
@testset "SphericalHarmStep2039" begin
    @test isfinite(compute_spherical_harm_2039(0.5))
end
