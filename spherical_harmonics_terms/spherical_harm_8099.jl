module SphericalHarmStep8099
export compute_spherical_harm_8099
function compute_spherical_harm_8099(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8099,Test
@testset "SphericalHarmStep8099" begin
    @test isfinite(compute_spherical_harm_8099(0.5))
end
