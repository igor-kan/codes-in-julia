module SphericalHarmStep10079
export compute_spherical_harm_10079
function compute_spherical_harm_10079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10079,Test
@testset "SphericalHarmStep10079" begin
    @test isfinite(compute_spherical_harm_10079(0.5))
end
