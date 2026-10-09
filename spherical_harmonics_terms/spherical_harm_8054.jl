module SphericalHarmStep8054
export compute_spherical_harm_8054
function compute_spherical_harm_8054(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8054,Test
@testset "SphericalHarmStep8054" begin
    @test isfinite(compute_spherical_harm_8054(0.5))
end
