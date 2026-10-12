module SphericalHarmStep12039
export compute_spherical_harm_12039
function compute_spherical_harm_12039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12039,Test
@testset "SphericalHarmStep12039" begin
    @test isfinite(compute_spherical_harm_12039(0.5))
end
