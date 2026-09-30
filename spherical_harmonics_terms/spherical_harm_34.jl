module SphericalHarmStep34

export compute_spherical_harm_34

function compute_spherical_harm_34(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep34
using Test
@testset "SphericalHarmStep34 Tests" begin
    @test isfinite(compute_spherical_harm_34(0.5))
end
