module SphericalHarmStep14004
export compute_spherical_harm_14004
function compute_spherical_harm_14004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14004,Test
@testset "SphericalHarmStep14004" begin
    @test isfinite(compute_spherical_harm_14004(0.5))
end
