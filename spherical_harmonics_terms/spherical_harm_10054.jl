module SphericalHarmStep10054
export compute_spherical_harm_10054
function compute_spherical_harm_10054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10054,Test
@testset "SphericalHarmStep10054" begin
    @test isfinite(compute_spherical_harm_10054(0.5))
end
