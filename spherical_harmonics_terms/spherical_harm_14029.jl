module SphericalHarmStep14029
export compute_spherical_harm_14029
function compute_spherical_harm_14029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep14029,Test
@testset "SphericalHarmStep14029" begin
    @test isfinite(compute_spherical_harm_14029(0.5))
end
