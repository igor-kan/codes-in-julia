module SphericalHarmStep604

export compute_spherical_harm_604

function compute_spherical_harm_604(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep604
using Test
@testset "SphericalHarmStep604 Tests" begin
    @test isfinite(compute_spherical_harm_604(0.5))
end
