module SphericalHarmStep3059
export compute_spherical_harm_3059
function compute_spherical_harm_3059(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3059,Test
@testset "SphericalHarmStep3059" begin
    @test isfinite(compute_spherical_harm_3059(0.5))
end
