module SphericalHarmStep64

export compute_spherical_harm_64

function compute_spherical_harm_64(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep64
using Test
@testset "SphericalHarmStep64 Tests" begin
    @test isfinite(compute_spherical_harm_64(0.5))
end
