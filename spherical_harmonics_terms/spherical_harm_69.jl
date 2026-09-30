module SphericalHarmStep69

export compute_spherical_harm_69

function compute_spherical_harm_69(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep69
using Test
@testset "SphericalHarmStep69 Tests" begin
    @test isfinite(compute_spherical_harm_69(0.5))
end
