module SphericalHarmStep544

export compute_spherical_harm_544

function compute_spherical_harm_544(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep544
using Test
@testset "SphericalHarmStep544 Tests" begin
    @test isfinite(compute_spherical_harm_544(0.5))
end
