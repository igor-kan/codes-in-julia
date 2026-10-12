module SphericalHarmStep12004
export compute_spherical_harm_12004
function compute_spherical_harm_12004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12004,Test
@testset "SphericalHarmStep12004" begin
    @test isfinite(compute_spherical_harm_12004(0.5))
end
