module SphericalHarmStep554

export compute_spherical_harm_554

function compute_spherical_harm_554(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep554
using Test
@testset "SphericalHarmStep554 Tests" begin
    @test isfinite(compute_spherical_harm_554(0.5))
end
