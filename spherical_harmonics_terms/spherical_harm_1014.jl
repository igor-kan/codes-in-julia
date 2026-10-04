module SphericalHarmStep1014

export compute_spherical_harm_1014

function compute_spherical_harm_1014(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1014
using Test
@testset "SphericalHarmStep1014 Tests" begin
    @test isfinite(compute_spherical_harm_1014(0.5))
end
