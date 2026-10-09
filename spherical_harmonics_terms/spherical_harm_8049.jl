module SphericalHarmStep8049
export compute_spherical_harm_8049
function compute_spherical_harm_8049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8049,Test
@testset "SphericalHarmStep8049" begin
    @test isfinite(compute_spherical_harm_8049(0.5))
end
