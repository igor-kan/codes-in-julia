module SphericalHarmStep3064
export compute_spherical_harm_3064
function compute_spherical_harm_3064(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep3064,Test
@testset "SphericalHarmStep3064" begin
    @test isfinite(compute_spherical_harm_3064(0.5))
end
