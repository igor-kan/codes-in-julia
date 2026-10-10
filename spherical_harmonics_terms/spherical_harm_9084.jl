module SphericalHarmStep9084
export compute_spherical_harm_9084
function compute_spherical_harm_9084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9084,Test
@testset "SphericalHarmStep9084" begin
    @test isfinite(compute_spherical_harm_9084(0.5))
end
