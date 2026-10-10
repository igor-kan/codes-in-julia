module SphericalHarmStep9049
export compute_spherical_harm_9049
function compute_spherical_harm_9049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9049,Test
@testset "SphericalHarmStep9049" begin
    @test isfinite(compute_spherical_harm_9049(0.5))
end
