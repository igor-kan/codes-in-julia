module SphericalHarmStep10084
export compute_spherical_harm_10084
function compute_spherical_harm_10084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10084,Test
@testset "SphericalHarmStep10084" begin
    @test isfinite(compute_spherical_harm_10084(0.5))
end
