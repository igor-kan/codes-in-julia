module SphericalHarmStep514

export compute_spherical_harm_514

function compute_spherical_harm_514(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep514
using Test
@testset "SphericalHarmStep514 Tests" begin
    @test isfinite(compute_spherical_harm_514(0.5))
end
