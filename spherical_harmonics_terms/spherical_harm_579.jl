module SphericalHarmStep579

export compute_spherical_harm_579

function compute_spherical_harm_579(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep579
using Test
@testset "SphericalHarmStep579 Tests" begin
    @test isfinite(compute_spherical_harm_579(0.5))
end
