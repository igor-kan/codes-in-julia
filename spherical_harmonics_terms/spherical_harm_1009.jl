module SphericalHarmStep1009

export compute_spherical_harm_1009

function compute_spherical_harm_1009(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1009
using Test
@testset "SphericalHarmStep1009 Tests" begin
    @test isfinite(compute_spherical_harm_1009(0.5))
end
