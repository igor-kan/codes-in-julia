module SphericalHarmStep12049
export compute_spherical_harm_12049
function compute_spherical_harm_12049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12049,Test
@testset "SphericalHarmStep12049" begin
    @test isfinite(compute_spherical_harm_12049(0.5))
end
