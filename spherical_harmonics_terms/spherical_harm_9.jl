module SphericalHarmStep9

export compute_spherical_harm_9

function compute_spherical_harm_9(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep9
using Test
@testset "SphericalHarmStep9 Tests" begin
    @test isfinite(compute_spherical_harm_9(0.5))
end
