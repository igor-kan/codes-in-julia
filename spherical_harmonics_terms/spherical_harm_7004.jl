module SphericalHarmStep7004
export compute_spherical_harm_7004
function compute_spherical_harm_7004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep7004,Test
@testset "SphericalHarmStep7004" begin
    @test isfinite(compute_spherical_harm_7004(0.5))
end
