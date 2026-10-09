module SphericalHarmStep8029
export compute_spherical_harm_8029
function compute_spherical_harm_8029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8029,Test
@testset "SphericalHarmStep8029" begin
    @test isfinite(compute_spherical_harm_8029(0.5))
end
