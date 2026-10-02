module SphericalHarmStep569

export compute_spherical_harm_569

function compute_spherical_harm_569(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep569
using Test
@testset "SphericalHarmStep569 Tests" begin
    @test isfinite(compute_spherical_harm_569(0.5))
end
