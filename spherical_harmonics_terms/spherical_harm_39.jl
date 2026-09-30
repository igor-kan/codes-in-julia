module SphericalHarmStep39

export compute_spherical_harm_39

function compute_spherical_harm_39(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep39
using Test
@testset "SphericalHarmStep39 Tests" begin
    @test isfinite(compute_spherical_harm_39(0.5))
end
