module SphericalHarmStep9059
export compute_spherical_harm_9059
function compute_spherical_harm_9059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9059,Test
@testset "SphericalHarmStep9059" begin
    @test isfinite(compute_spherical_harm_9059(0.5))
end
