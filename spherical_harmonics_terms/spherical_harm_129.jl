module SphericalHarmStep129

export compute_spherical_harm_129

function compute_spherical_harm_129(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep129
using Test
@testset "SphericalHarmStep129 Tests" begin
    @test isfinite(compute_spherical_harm_129(0.5))
end
