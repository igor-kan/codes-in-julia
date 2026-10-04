module SphericalHarmStep1084

export compute_spherical_harm_1084

function compute_spherical_harm_1084(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1084
using Test
@testset "SphericalHarmStep1084 Tests" begin
    @test isfinite(compute_spherical_harm_1084(0.5))
end
