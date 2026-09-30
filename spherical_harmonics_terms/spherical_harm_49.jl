module SphericalHarmStep49

export compute_spherical_harm_49

function compute_spherical_harm_49(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep49
using Test
@testset "SphericalHarmStep49 Tests" begin
    @test isfinite(compute_spherical_harm_49(0.5))
end
