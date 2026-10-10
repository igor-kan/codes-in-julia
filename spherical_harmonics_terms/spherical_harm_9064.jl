module SphericalHarmStep9064
export compute_spherical_harm_9064
function compute_spherical_harm_9064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9064,Test
@testset "SphericalHarmStep9064" begin
    @test isfinite(compute_spherical_harm_9064(0.5))
end
