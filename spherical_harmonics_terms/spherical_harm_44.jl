module SphericalHarmStep44

export compute_spherical_harm_44

function compute_spherical_harm_44(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep44
using Test
@testset "SphericalHarmStep44 Tests" begin
    @test isfinite(compute_spherical_harm_44(0.5))
end
