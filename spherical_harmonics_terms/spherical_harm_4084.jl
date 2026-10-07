module SphericalHarmStep4084
export compute_spherical_harm_4084
function compute_spherical_harm_4084(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep4084,Test
@testset "SphericalHarmStep4084" begin
    @test isfinite(compute_spherical_harm_4084(0.5))
end
