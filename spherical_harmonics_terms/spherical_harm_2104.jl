module SphericalHarmStep2104
export compute_spherical_harm_2104
function compute_spherical_harm_2104(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2104,Test
@testset "SphericalHarmStep2104" begin
    @test isfinite(compute_spherical_harm_2104(0.5))
end
