module SphericalHarmStep2049
export compute_spherical_harm_2049
function compute_spherical_harm_2049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2049,Test
@testset "SphericalHarmStep2049" begin
    @test isfinite(compute_spherical_harm_2049(0.5))
end
