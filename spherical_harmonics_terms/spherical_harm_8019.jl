module SphericalHarmStep8019
export compute_spherical_harm_8019
function compute_spherical_harm_8019(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8019,Test
@testset "SphericalHarmStep8019" begin
    @test isfinite(compute_spherical_harm_8019(0.5))
end
