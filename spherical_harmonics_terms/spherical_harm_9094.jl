module SphericalHarmStep9094
export compute_spherical_harm_9094
function compute_spherical_harm_9094(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9094,Test
@testset "SphericalHarmStep9094" begin
    @test isfinite(compute_spherical_harm_9094(0.5))
end
