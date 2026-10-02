module SphericalHarmStep584

export compute_spherical_harm_584

function compute_spherical_harm_584(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep584
using Test
@testset "SphericalHarmStep584 Tests" begin
    @test isfinite(compute_spherical_harm_584(0.5))
end
