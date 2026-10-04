module SphericalHarmStep1049

export compute_spherical_harm_1049

function compute_spherical_harm_1049(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1049
using Test
@testset "SphericalHarmStep1049 Tests" begin
    @test isfinite(compute_spherical_harm_1049(0.5))
end
