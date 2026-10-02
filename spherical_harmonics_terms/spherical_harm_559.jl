module SphericalHarmStep559

export compute_spherical_harm_559

function compute_spherical_harm_559(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep559
using Test
@testset "SphericalHarmStep559 Tests" begin
    @test isfinite(compute_spherical_harm_559(0.5))
end
