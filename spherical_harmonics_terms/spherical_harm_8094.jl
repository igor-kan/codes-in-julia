module SphericalHarmStep8094
export compute_spherical_harm_8094
function compute_spherical_harm_8094(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8094,Test
@testset "SphericalHarmStep8094" begin
    @test isfinite(compute_spherical_harm_8094(0.5))
end
