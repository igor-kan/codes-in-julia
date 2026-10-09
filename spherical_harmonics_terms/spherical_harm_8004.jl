module SphericalHarmStep8004
export compute_spherical_harm_8004
function compute_spherical_harm_8004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8004,Test
@testset "SphericalHarmStep8004" begin
    @test isfinite(compute_spherical_harm_8004(0.5))
end
