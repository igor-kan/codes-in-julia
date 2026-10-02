module SphericalHarmStep599

export compute_spherical_harm_599

function compute_spherical_harm_599(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep599
using Test
@testset "SphericalHarmStep599 Tests" begin
    @test isfinite(compute_spherical_harm_599(0.5))
end
