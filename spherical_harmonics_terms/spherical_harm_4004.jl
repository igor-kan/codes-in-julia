module SphericalHarmStep4004
export compute_spherical_harm_4004
function compute_spherical_harm_4004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4004,Test
@testset "SphericalHarmStep4004" begin
    @test isfinite(compute_spherical_harm_4004(0.5))
end
