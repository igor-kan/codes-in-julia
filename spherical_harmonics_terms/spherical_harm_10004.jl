module SphericalHarmStep10004
export compute_spherical_harm_10004
function compute_spherical_harm_10004(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10004,Test
@testset "SphericalHarmStep10004" begin
    @test isfinite(compute_spherical_harm_10004(0.5))
end
