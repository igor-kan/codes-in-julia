module SphericalHarmStep1019

export compute_spherical_harm_1019

function compute_spherical_harm_1019(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1019
using Test
@testset "SphericalHarmStep1019 Tests" begin
    @test isfinite(compute_spherical_harm_1019(0.5))
end
