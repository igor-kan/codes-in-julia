module SphericalHarmStep4094
export compute_spherical_harm_4094
function compute_spherical_harm_4094(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4094,Test
@testset "SphericalHarmStep4094" begin
    @test isfinite(compute_spherical_harm_4094(0.5))
end
