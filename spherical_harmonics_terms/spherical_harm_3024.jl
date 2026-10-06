module SphericalHarmStep3024
export compute_spherical_harm_3024
function compute_spherical_harm_3024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3024,Test
@testset "SphericalHarmStep3024" begin
    @test isfinite(compute_spherical_harm_3024(0.5))
end
