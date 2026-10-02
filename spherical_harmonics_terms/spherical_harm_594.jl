module SphericalHarmStep594

export compute_spherical_harm_594

function compute_spherical_harm_594(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep594
using Test
@testset "SphericalHarmStep594 Tests" begin
    @test isfinite(compute_spherical_harm_594(0.5))
end
