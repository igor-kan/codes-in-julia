module SphericalHarmStep1004

export compute_spherical_harm_1004

function compute_spherical_harm_1004(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1004
using Test
@testset "SphericalHarmStep1004 Tests" begin
    @test isfinite(compute_spherical_harm_1004(0.5))
end
