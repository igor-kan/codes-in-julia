module SphericalHarmStep54

export compute_spherical_harm_54

function compute_spherical_harm_54(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep54
using Test
@testset "SphericalHarmStep54 Tests" begin
    @test isfinite(compute_spherical_harm_54(0.5))
end
