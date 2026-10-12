module SphericalHarmStep12059
export compute_spherical_harm_12059
function compute_spherical_harm_12059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12059,Test
@testset "SphericalHarmStep12059" begin
    @test isfinite(compute_spherical_harm_12059(0.5))
end
