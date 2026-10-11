module SphericalHarmStep10014
export compute_spherical_harm_10014
function compute_spherical_harm_10014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10014,Test
@testset "SphericalHarmStep10014" begin
    @test isfinite(compute_spherical_harm_10014(0.5))
end
