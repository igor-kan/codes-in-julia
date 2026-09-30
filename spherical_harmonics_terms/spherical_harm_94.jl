module SphericalHarmStep94

export compute_spherical_harm_94

function compute_spherical_harm_94(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep94
using Test
@testset "SphericalHarmStep94 Tests" begin
    @test isfinite(compute_spherical_harm_94(0.5))
end
