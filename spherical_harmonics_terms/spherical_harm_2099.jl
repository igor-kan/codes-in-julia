module SphericalHarmStep2099
export compute_spherical_harm_2099
function compute_spherical_harm_2099(x::Float64)::Float64
    return (x^5)/10.0
end
end
using .SphericalHarmStep2099,Test
@testset "SphericalHarmStep2099" begin
    @test isfinite(compute_spherical_harm_2099(0.5))
end
