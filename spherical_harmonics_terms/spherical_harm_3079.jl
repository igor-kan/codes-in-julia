module SphericalHarmStep3079
export compute_spherical_harm_3079
function compute_spherical_harm_3079(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3079,Test
@testset "SphericalHarmStep3079" begin
    @test isfinite(compute_spherical_harm_3079(0.5))
end
