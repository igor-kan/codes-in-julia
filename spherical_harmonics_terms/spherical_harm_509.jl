module SphericalHarmStep509

export compute_spherical_harm_509

function compute_spherical_harm_509(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep509
using Test
@testset "SphericalHarmStep509 Tests" begin
    @test isfinite(compute_spherical_harm_509(0.5))
end
