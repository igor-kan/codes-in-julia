module SphericalHarmStep1064

export compute_spherical_harm_1064

function compute_spherical_harm_1064(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1064
using Test
@testset "SphericalHarmStep1064 Tests" begin
    @test isfinite(compute_spherical_harm_1064(0.5))
end
