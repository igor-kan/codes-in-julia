module SphericalHarmStep614

export compute_spherical_harm_614

function compute_spherical_harm_614(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep614
using Test
@testset "SphericalHarmStep614 Tests" begin
    @test isfinite(compute_spherical_harm_614(0.5))
end
