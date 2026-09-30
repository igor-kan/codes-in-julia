module SphericalHarmStep114

export compute_spherical_harm_114

function compute_spherical_harm_114(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep114
using Test
@testset "SphericalHarmStep114 Tests" begin
    @test isfinite(compute_spherical_harm_114(0.5))
end
