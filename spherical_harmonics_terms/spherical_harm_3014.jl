module SphericalHarmStep3014
export compute_spherical_harm_3014
function compute_spherical_harm_3014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3014,Test
@testset "SphericalHarmStep3014" begin
    @test isfinite(compute_spherical_harm_3014(0.5))
end
