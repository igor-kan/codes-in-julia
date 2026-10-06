module SphericalHarmStep3004
export compute_spherical_harm_3004
function compute_spherical_harm_3004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3004,Test
@testset "SphericalHarmStep3004" begin
    @test isfinite(compute_spherical_harm_3004(0.5))
end
