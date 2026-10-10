module SphericalHarmStep9099
export compute_spherical_harm_9099
function compute_spherical_harm_9099(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9099,Test
@testset "SphericalHarmStep9099" begin
    @test isfinite(compute_spherical_harm_9099(0.5))
end
