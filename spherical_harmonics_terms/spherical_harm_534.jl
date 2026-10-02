module SphericalHarmStep534

export compute_spherical_harm_534

function compute_spherical_harm_534(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep534
using Test
@testset "SphericalHarmStep534 Tests" begin
    @test isfinite(compute_spherical_harm_534(0.5))
end
