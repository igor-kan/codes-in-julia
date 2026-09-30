module SphericalHarmStep59

export compute_spherical_harm_59

function compute_spherical_harm_59(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep59
using Test
@testset "SphericalHarmStep59 Tests" begin
    @test isfinite(compute_spherical_harm_59(0.5))
end
