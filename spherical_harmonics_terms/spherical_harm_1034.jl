module SphericalHarmStep1034

export compute_spherical_harm_1034

function compute_spherical_harm_1034(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1034
using Test
@testset "SphericalHarmStep1034 Tests" begin
    @test isfinite(compute_spherical_harm_1034(0.5))
end
