module SphericalHarmStep104

export compute_spherical_harm_104

function compute_spherical_harm_104(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep104
using Test
@testset "SphericalHarmStep104 Tests" begin
    @test isfinite(compute_spherical_harm_104(0.5))
end
