module SphericalHarmStep609

export compute_spherical_harm_609

function compute_spherical_harm_609(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep609
using Test
@testset "SphericalHarmStep609 Tests" begin
    @test isfinite(compute_spherical_harm_609(0.5))
end
