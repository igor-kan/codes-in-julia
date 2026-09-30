module SphericalHarmStep89

export compute_spherical_harm_89

function compute_spherical_harm_89(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep89
using Test
@testset "SphericalHarmStep89 Tests" begin
    @test isfinite(compute_spherical_harm_89(0.5))
end
