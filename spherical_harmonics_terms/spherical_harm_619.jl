module SphericalHarmStep619

export compute_spherical_harm_619

function compute_spherical_harm_619(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep619
using Test
@testset "SphericalHarmStep619 Tests" begin
    @test isfinite(compute_spherical_harm_619(0.5))
end
