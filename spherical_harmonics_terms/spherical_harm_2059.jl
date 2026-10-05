module SphericalHarmStep2059
export compute_spherical_harm_2059
function compute_spherical_harm_2059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2059,Test
@testset "SphericalHarmStep2059" begin
    @test isfinite(compute_spherical_harm_2059(0.5))
end
