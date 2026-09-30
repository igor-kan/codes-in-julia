module SphericalHarmStep119

export compute_spherical_harm_119

function compute_spherical_harm_119(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep119
using Test
@testset "SphericalHarmStep119 Tests" begin
    @test isfinite(compute_spherical_harm_119(0.5))
end
