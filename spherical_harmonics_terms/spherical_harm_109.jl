module SphericalHarmStep109

export compute_spherical_harm_109

function compute_spherical_harm_109(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep109
using Test
@testset "SphericalHarmStep109 Tests" begin
    @test isfinite(compute_spherical_harm_109(0.5))
end
