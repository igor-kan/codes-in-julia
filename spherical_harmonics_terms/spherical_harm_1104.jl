module SphericalHarmStep1104

export compute_spherical_harm_1104

function compute_spherical_harm_1104(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1104
using Test
@testset "SphericalHarmStep1104 Tests" begin
    @test isfinite(compute_spherical_harm_1104(0.5))
end
