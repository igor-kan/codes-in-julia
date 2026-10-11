module SphericalHarmStep10049
export compute_spherical_harm_10049
function compute_spherical_harm_10049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10049,Test
@testset "SphericalHarmStep10049" begin
    @test isfinite(compute_spherical_harm_10049(0.5))
end
