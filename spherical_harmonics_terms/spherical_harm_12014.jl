module SphericalHarmStep12014
export compute_spherical_harm_12014
function compute_spherical_harm_12014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12014,Test
@testset "SphericalHarmStep12014" begin
    @test isfinite(compute_spherical_harm_12014(0.5))
end
