module SphericalHarmStep1054

export compute_spherical_harm_1054

function compute_spherical_harm_1054(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1054
using Test
@testset "SphericalHarmStep1054 Tests" begin
    @test isfinite(compute_spherical_harm_1054(0.5))
end
