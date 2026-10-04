module SphericalHarmStep1089

export compute_spherical_harm_1089

function compute_spherical_harm_1089(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1089
using Test
@testset "SphericalHarmStep1089 Tests" begin
    @test isfinite(compute_spherical_harm_1089(0.5))
end
