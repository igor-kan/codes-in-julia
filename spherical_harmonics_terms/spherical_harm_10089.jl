module SphericalHarmStep10089
export compute_spherical_harm_10089
function compute_spherical_harm_10089(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10089,Test
@testset "SphericalHarmStep10089" begin
    @test isfinite(compute_spherical_harm_10089(0.5))
end
