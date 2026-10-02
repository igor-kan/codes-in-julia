module SphericalHarmStep589

export compute_spherical_harm_589

function compute_spherical_harm_589(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep589
using Test
@testset "SphericalHarmStep589 Tests" begin
    @test isfinite(compute_spherical_harm_589(0.5))
end
