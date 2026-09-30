module SphericalHarmStep4

export compute_spherical_harm_4

function compute_spherical_harm_4(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep4
using Test
@testset "SphericalHarmStep4 Tests" begin
    @test isfinite(compute_spherical_harm_4(0.5))
end
