module SphericalHarmStep9039
export compute_spherical_harm_9039
function compute_spherical_harm_9039(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9039,Test
@testset "SphericalHarmStep9039" begin
    @test isfinite(compute_spherical_harm_9039(0.5))
end
