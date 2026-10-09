module SphericalHarmStep8089
export compute_spherical_harm_8089
function compute_spherical_harm_8089(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8089,Test
@testset "SphericalHarmStep8089" begin
    @test isfinite(compute_spherical_harm_8089(0.5))
end
