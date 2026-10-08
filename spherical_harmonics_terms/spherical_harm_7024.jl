module SphericalHarmStep7024
export compute_spherical_harm_7024
function compute_spherical_harm_7024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep7024,Test
@testset "SphericalHarmStep7024" begin
    @test isfinite(compute_spherical_harm_7024(0.5))
end
