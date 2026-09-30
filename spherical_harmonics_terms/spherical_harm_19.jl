module SphericalHarmStep19

export compute_spherical_harm_19

function compute_spherical_harm_19(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep19
using Test
@testset "SphericalHarmStep19 Tests" begin
    @test isfinite(compute_spherical_harm_19(0.5))
end
