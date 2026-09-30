module SphericalHarmStep24

export compute_spherical_harm_24

function compute_spherical_harm_24(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep24
using Test
@testset "SphericalHarmStep24 Tests" begin
    @test isfinite(compute_spherical_harm_24(0.5))
end
