module SphericalHarmStep5059
export compute_spherical_harm_5059
function compute_spherical_harm_5059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5059,Test
@testset "SphericalHarmStep5059" begin
    @test isfinite(compute_spherical_harm_5059(0.5))
end
