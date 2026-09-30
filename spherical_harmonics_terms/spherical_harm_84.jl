module SphericalHarmStep84

export compute_spherical_harm_84

function compute_spherical_harm_84(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep84
using Test
@testset "SphericalHarmStep84 Tests" begin
    @test isfinite(compute_spherical_harm_84(0.5))
end
