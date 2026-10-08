module SphericalHarmStep5099
export compute_spherical_harm_5099
function compute_spherical_harm_5099(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5099,Test
@testset "SphericalHarmStep5099" begin
    @test isfinite(compute_spherical_harm_5099(0.5))
end
