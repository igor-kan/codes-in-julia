module SphericalHarmStep124

export compute_spherical_harm_124

function compute_spherical_harm_124(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep124
using Test
@testset "SphericalHarmStep124 Tests" begin
    @test isfinite(compute_spherical_harm_124(0.5))
end
