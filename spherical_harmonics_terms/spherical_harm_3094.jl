module SphericalHarmStep3094
export compute_spherical_harm_3094
function compute_spherical_harm_3094(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3094,Test
@testset "SphericalHarmStep3094" begin
    @test isfinite(compute_spherical_harm_3094(0.5))
end
