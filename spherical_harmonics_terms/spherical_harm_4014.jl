module SphericalHarmStep4014
export compute_spherical_harm_4014
function compute_spherical_harm_4014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4014,Test
@testset "SphericalHarmStep4014" begin
    @test isfinite(compute_spherical_harm_4014(0.5))
end
