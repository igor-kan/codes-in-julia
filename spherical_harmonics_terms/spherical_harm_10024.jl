module SphericalHarmStep10024
export compute_spherical_harm_10024
function compute_spherical_harm_10024(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep10024,Test
@testset "SphericalHarmStep10024" begin
    @test isfinite(compute_spherical_harm_10024(0.5))
end
