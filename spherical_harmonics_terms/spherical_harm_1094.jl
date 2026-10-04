module SphericalHarmStep1094

export compute_spherical_harm_1094

function compute_spherical_harm_1094(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1094
using Test
@testset "SphericalHarmStep1094 Tests" begin
    @test isfinite(compute_spherical_harm_1094(0.5))
end
