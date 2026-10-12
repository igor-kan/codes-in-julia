module SphericalHarmStep12029
export compute_spherical_harm_12029
function compute_spherical_harm_12029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep12029,Test
@testset "SphericalHarmStep12029" begin
    @test isfinite(compute_spherical_harm_12029(0.5))
end
