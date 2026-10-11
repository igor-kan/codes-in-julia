module SphericalHarmStep10059
export compute_spherical_harm_10059
function compute_spherical_harm_10059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10059,Test
@testset "SphericalHarmStep10059" begin
    @test isfinite(compute_spherical_harm_10059(0.5))
end
