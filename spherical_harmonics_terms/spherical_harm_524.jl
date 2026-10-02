module SphericalHarmStep524

export compute_spherical_harm_524

function compute_spherical_harm_524(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep524
using Test
@testset "SphericalHarmStep524 Tests" begin
    @test isfinite(compute_spherical_harm_524(0.5))
end
