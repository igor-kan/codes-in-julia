module SphericalHarmStep4059
export compute_spherical_harm_4059
function compute_spherical_harm_4059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4059,Test
@testset "SphericalHarmStep4059" begin
    @test isfinite(compute_spherical_harm_4059(0.5))
end
