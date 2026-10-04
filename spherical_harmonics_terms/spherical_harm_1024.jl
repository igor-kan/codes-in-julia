module SphericalHarmStep1024

export compute_spherical_harm_1024

function compute_spherical_harm_1024(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1024
using Test
@testset "SphericalHarmStep1024 Tests" begin
    @test isfinite(compute_spherical_harm_1024(0.5))
end
