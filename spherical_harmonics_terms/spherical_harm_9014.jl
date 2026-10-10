module SphericalHarmStep9014
export compute_spherical_harm_9014
function compute_spherical_harm_9014(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9014,Test
@testset "SphericalHarmStep9014" begin
    @test isfinite(compute_spherical_harm_9014(0.5))
end
