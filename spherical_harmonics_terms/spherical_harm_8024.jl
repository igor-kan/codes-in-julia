module SphericalHarmStep8024
export compute_spherical_harm_8024
function compute_spherical_harm_8024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8024,Test
@testset "SphericalHarmStep8024" begin
    @test isfinite(compute_spherical_harm_8024(0.5))
end
