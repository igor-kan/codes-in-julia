module SphericalHarmStep9024
export compute_spherical_harm_9024
function compute_spherical_harm_9024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9024,Test
@testset "SphericalHarmStep9024" begin
    @test isfinite(compute_spherical_harm_9024(0.5))
end
