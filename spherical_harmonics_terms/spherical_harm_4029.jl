module SphericalHarmStep4029
export compute_spherical_harm_4029
function compute_spherical_harm_4029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4029,Test
@testset "SphericalHarmStep4029" begin
    @test isfinite(compute_spherical_harm_4029(0.5))
end
