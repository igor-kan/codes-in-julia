module SphericalHarmStep519

export compute_spherical_harm_519

function compute_spherical_harm_519(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep519
using Test
@testset "SphericalHarmStep519 Tests" begin
    @test isfinite(compute_spherical_harm_519(0.5))
end
