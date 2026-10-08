module SphericalHarmStep5094
export compute_spherical_harm_5094
function compute_spherical_harm_5094(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep5094,Test
@testset "SphericalHarmStep5094" begin
    @test isfinite(compute_spherical_harm_5094(0.5))
end
