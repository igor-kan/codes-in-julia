module SphericalHarmStep3029
export compute_spherical_harm_3029
function compute_spherical_harm_3029(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3029,Test
@testset "SphericalHarmStep3029" begin
    @test isfinite(compute_spherical_harm_3029(0.5))
end
