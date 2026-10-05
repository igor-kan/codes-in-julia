module SphericalHarmStep2029
export compute_spherical_harm_2029
function compute_spherical_harm_2029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2029,Test
@testset "SphericalHarmStep2029" begin
    @test isfinite(compute_spherical_harm_2029(0.5))
end
