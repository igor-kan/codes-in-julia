module SphericalHarmStep529

export compute_spherical_harm_529

function compute_spherical_harm_529(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep529
using Test
@testset "SphericalHarmStep529 Tests" begin
    @test isfinite(compute_spherical_harm_529(0.5))
end
