module SphericalHarmStep1079

export compute_spherical_harm_1079

function compute_spherical_harm_1079(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1079
using Test
@testset "SphericalHarmStep1079 Tests" begin
    @test isfinite(compute_spherical_harm_1079(0.5))
end
