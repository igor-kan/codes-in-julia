module SphericalHarmStep14049
export compute_spherical_harm_14049
function compute_spherical_harm_14049(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14049,Test
@testset "SphericalHarmStep14049" begin
    @test isfinite(compute_spherical_harm_14049(0.5))
end
