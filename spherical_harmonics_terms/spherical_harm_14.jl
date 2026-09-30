module SphericalHarmStep14

export compute_spherical_harm_14

function compute_spherical_harm_14(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep14
using Test
@testset "SphericalHarmStep14 Tests" begin
    @test isfinite(compute_spherical_harm_14(0.5))
end
