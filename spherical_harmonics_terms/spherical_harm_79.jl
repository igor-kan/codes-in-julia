module SphericalHarmStep79

export compute_spherical_harm_79

function compute_spherical_harm_79(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep79
using Test
@testset "SphericalHarmStep79 Tests" begin
    @test isfinite(compute_spherical_harm_79(0.5))
end
