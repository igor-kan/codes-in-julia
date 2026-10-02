module SphericalHarmStep549

export compute_spherical_harm_549

function compute_spherical_harm_549(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep549
using Test
@testset "SphericalHarmStep549 Tests" begin
    @test isfinite(compute_spherical_harm_549(0.5))
end
