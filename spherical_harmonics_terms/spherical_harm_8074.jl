module SphericalHarmStep8074
export compute_spherical_harm_8074
function compute_spherical_harm_8074(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep8074,Test
@testset "SphericalHarmStep8074" begin
    @test isfinite(compute_spherical_harm_8074(0.5))
end
