module SphericalHarmStep74

export compute_spherical_harm_74

function compute_spherical_harm_74(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep74
using Test
@testset "SphericalHarmStep74 Tests" begin
    @test isfinite(compute_spherical_harm_74(0.5))
end
