module SphericalHarmStep539

export compute_spherical_harm_539

function compute_spherical_harm_539(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep539
using Test
@testset "SphericalHarmStep539 Tests" begin
    @test isfinite(compute_spherical_harm_539(0.5))
end
