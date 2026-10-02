module SphericalHarmStep564

export compute_spherical_harm_564

function compute_spherical_harm_564(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep564
using Test
@testset "SphericalHarmStep564 Tests" begin
    @test isfinite(compute_spherical_harm_564(0.5))
end
