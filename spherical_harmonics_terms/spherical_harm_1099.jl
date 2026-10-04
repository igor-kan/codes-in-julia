module SphericalHarmStep1099

export compute_spherical_harm_1099

function compute_spherical_harm_1099(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1099
using Test
@testset "SphericalHarmStep1099 Tests" begin
    @test isfinite(compute_spherical_harm_1099(0.5))
end
