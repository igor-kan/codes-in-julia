module SphericalHarmStep1069

export compute_spherical_harm_1069

function compute_spherical_harm_1069(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1069
using Test
@testset "SphericalHarmStep1069 Tests" begin
    @test isfinite(compute_spherical_harm_1069(0.5))
end
