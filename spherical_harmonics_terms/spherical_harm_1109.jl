module SphericalHarmStep1109

export compute_spherical_harm_1109

function compute_spherical_harm_1109(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1109
using Test
@testset "SphericalHarmStep1109 Tests" begin
    @test isfinite(compute_spherical_harm_1109(0.5))
end
