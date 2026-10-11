module SphericalHarmStep10039
export compute_spherical_harm_10039
function compute_spherical_harm_10039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10039,Test
@testset "SphericalHarmStep10039" begin
    @test isfinite(compute_spherical_harm_10039(0.5))
end
