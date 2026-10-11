module SphericalHarmStep10029
export compute_spherical_harm_10029
function compute_spherical_harm_10029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10029,Test
@testset "SphericalHarmStep10029" begin
    @test isfinite(compute_spherical_harm_10029(0.5))
end
