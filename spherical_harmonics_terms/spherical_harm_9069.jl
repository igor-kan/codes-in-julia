module SphericalHarmStep9069
export compute_spherical_harm_9069
function compute_spherical_harm_9069(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep9069,Test
@testset "SphericalHarmStep9069" begin
    @test isfinite(compute_spherical_harm_9069(0.5))
end
