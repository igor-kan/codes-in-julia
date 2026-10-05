module SphericalHarmStep2094
export compute_spherical_harm_2094
function compute_spherical_harm_2094(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2094,Test
@testset "SphericalHarmStep2094" begin
    @test isfinite(compute_spherical_harm_2094(0.5))
end
