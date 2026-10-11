module SphericalHarmStep10074
export compute_spherical_harm_10074
function compute_spherical_harm_10074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10074,Test
@testset "SphericalHarmStep10074" begin
    @test isfinite(compute_spherical_harm_10074(0.5))
end
