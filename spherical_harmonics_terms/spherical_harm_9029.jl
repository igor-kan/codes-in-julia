module SphericalHarmStep9029
export compute_spherical_harm_9029
function compute_spherical_harm_9029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9029,Test
@testset "SphericalHarmStep9029" begin
    @test isfinite(compute_spherical_harm_9029(0.5))
end
