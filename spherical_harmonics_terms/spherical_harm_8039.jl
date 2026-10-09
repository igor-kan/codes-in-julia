module SphericalHarmStep8039
export compute_spherical_harm_8039
function compute_spherical_harm_8039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8039,Test
@testset "SphericalHarmStep8039" begin
    @test isfinite(compute_spherical_harm_8039(0.5))
end
