module SphericalHarmStep99

export compute_spherical_harm_99

function compute_spherical_harm_99(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep99
using Test
@testset "SphericalHarmStep99 Tests" begin
    @test isfinite(compute_spherical_harm_99(0.5))
end
