module SphericalHarmStep3099
export compute_spherical_harm_3099
function compute_spherical_harm_3099(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3099,Test
@testset "SphericalHarmStep3099" begin
    @test isfinite(compute_spherical_harm_3099(0.5))
end
