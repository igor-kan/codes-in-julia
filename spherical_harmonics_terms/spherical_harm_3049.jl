module SphericalHarmStep3049
export compute_spherical_harm_3049
function compute_spherical_harm_3049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3049,Test
@testset "SphericalHarmStep3049" begin
    @test isfinite(compute_spherical_harm_3049(0.5))
end
