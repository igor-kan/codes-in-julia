module SphericalHarmStep574

export compute_spherical_harm_574

function compute_spherical_harm_574(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep574
using Test
@testset "SphericalHarmStep574 Tests" begin
    @test isfinite(compute_spherical_harm_574(0.5))
end
